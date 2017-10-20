<?php

namespace App\Http\Controllers;

use App\Post;

use Illuminate\Http\Request;

class PostController extends Controller
{

    public function __construct()
    {
        $this->middleware('oauth', ['except' => ['index', 'show']]);
        $this->middleware('authorize:' . __CLASS__, ['except' => ['index', 'show', 'store']]);
    }

    public function index($page, $limit, $keyword = '')
    {
        $posts['result'] = Post::limit($limit)
            ->offset(($page - 1) * $limit)
            ->where('title', 'like', '%' . $keyword . '%')
            ->get();
        $posts['length'] = count(Post::where('title', 'like', '%' . $keyword . '%')->get());
        return $this->success($posts, 200);
    }

    public function store(Request $request)
    {
        $this->validateRequest($request);
        $post = Post::create([
            'title' => $request->get('title'),
            'content' => $request->get('content'),
            'published_at' => $request->get('publishedAt'),
            'image' => $request->get('image'),
            'user_id' => $this->getUserId()
        ]);

        return $this->success("The post with id {$post->id} has been created", 201);
    }

    public function show($id)
    {

        $post = Post::find($id);

        if (!$post) {
            return $this->error("The post with {$id} doesn't exist", 404);
        }

        return $this->success($post, 200);
    }

    public function update(Request $request, $id)
    {

        $post = Post::find($id);

        if (!$post) {
            return $this->error("The post with {$id} doesn't exist", 404);
        }

        $this->validateRequest($request);

        $post->title = $request->get('title');
        $post->content = $request->get('content');
        $post->published_at = $request->get('publishedAt');
        $post->image = $request->get('image');
        $post->user_id = $this->getUserId();

        $post->save();

        return $this->success("The post with with id {$post->id} has been updated", 200);
    }

    public function destroy($id)
    {

        $post = Post::find($id);

        if (!$post) {
            return $this->error("The post with {$id} doesn't exist", 404);
        }

        // no need to delete the comments for the current post,
        // since we used on delete cascase on update cascase.
        // $post->comments()->delete();
        $post->delete();

        return $this->success("The post with with id {$id} has been deleted along with it's comments", 200);
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

        $resource = "posts";
        $post = Post::find($this->getArgs($request)["post_id"]);

        return $this->authorizeUser($request, $resource, $post);
    }
}