<?php

namespace App\Http\Controllers;

use App\Article;

use Illuminate\Http\Request;

class ArticleController extends Controller
{

    public function __construct()
    {

    }

    public function index($page, $limit, $keyword = '')
    {
        $articles['result'] = Article::limit($limit)
            ->offset(($page - 1) * $limit)
            ->where('title', 'like', '%' . $keyword . '%')
            ->get();
        $articles['length'] = count(Article::where('title', 'like', '%' . $keyword . '%')->get());
        return $this->success($articles, 200);
    }

    public function store(Request $request)
    {
        $this->validateRequest($request);
        $article = Article::create([
            'title' => $request->get('title'),
            'content' => $request->get('content'),
            'published_at' => $request->get('publishedAt'),
            'image' => $request->get('image'),
            'user_id' => $this->getUserId()
        ]);

        return $this->success("The article with id {$article->id} has been created", 201);
    }

    public function show($id)
    {

        $article = Article::find($id);

        if (!$article) {
            return $this->error("The article with {$id} doesn't exist", 404);
        }

        return $this->success($article, 200);
    }

    public function update(Request $request, $id)
    {

        $article = Article::find($id);

        if (!$article) {
            return $this->error("The article with {$id} doesn't exist", 404);
        }

        $this->validateRequest($request);

        $article->title = $request->get('title');
        $article->content = $request->get('content');
        $article->published_at = $request->get('publishedAt');
        $article->image = $request->get('image');
        $article->user_id = $this->getUserId();

        $article->save();

        return $this->success("The article with with id {$article->id} has been updated", 200);
    }

    public function destroy($id)
    {

        $article = Article::find($id);

        if (!$article) {
            return $this->error("The article with {$id} doesn't exist", 404);
        }

        // no need to delete the comments for the current article,
        // since we used on delete cascase on update cascase.
        // $article->comments()->delete();
        $article->delete();

        return $this->success("The article with with id {$id} has been deleted along with it's comments", 200);
    }

    public function validateRequest(Request $request)
    {
        $rules = [
            'title' => 'required',
            'content' => 'required',
        ];

        $this->validate($request, $rules);

    }

    public function isAuthorized(Request $request)
    {

        $resource = "articles";
        $article = Article::find($this->getArgs($request)["article_id"]);

        return $this->authorizeUser($request, $resource, $article);
    }
}