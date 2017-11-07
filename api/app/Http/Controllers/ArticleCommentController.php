<?php 

namespace App\Http\Controllers;

use App\Article;
use App\Comment;

use Illuminate\Http\Request;

class ArticleCommentController extends Controller{

	public function __construct(){
		
		$this->middleware('auth', ['except' => ['index', 'show']]);
		$this->middleware('authorize:' . __CLASS__, ['except' => ['index', 'show', 'store']]);
	}

	public function index($article_id){

		$article = Article::find($article_id);

		if(!$article){
			return $this->error("The article with {$article_id} doesn't exist", 404);
		}

		$comments = $article->comments;
		return $this->success($comments, 200);
	}

	public function store(Request $request, $article_id){
		
		$article = Article::find($article_id);

		if(!$article){
			return $this->error("The article with {$article_id} doesn't exist", 404);
		}

		$this->validateRequest($request);

		$comment = Comment::create([
				'content' => $request->get('content'),
				'user_id'=> $this->getUserId(),
				'article_id'=> $article_id
			]);

		return $this->success("The comment with id {$comment->id} has been created and assigned to the article with id {$article_id}", 201);
	}

	public function update(Request $request, $article_id, $comment_id){

		$comment 	= Comment::find($comment_id);
		$article 		= Article::find($article_id);

		if(!$comment || !$article){
			return $this->error("The comment with {$comment_id} or the article with id {$article_id} doesn't exist", 404);
		}

		$this->validateRequest($request);

		$comment->content 		= $request->get('content');
		$comment->user_id 		= $this->getUserId();
		$comment->article_id 		= $article_id;

		$comment->save();

		return $this->success("The comment with with id {$comment->id} has been updated", 200);
	}

	public function destroy($article_id, $comment_id){
		
		$comment 	= Comment::find($comment_id);
		$article 		= Article::find($article_id);

		if(!$comment || !$article){
			return $this->error("The comment with {$comment_id} or the article with id {$article_id} doesn't exist", 404);
		}

		if(!$article->comments()->find($comment_id)){
			return $this->error("The comment with id {$comment_id} isn't assigned to the article with id {$article_id}", 409);
		}

		$comment->delete();

		return $this->success("The comment with id {$comment_id} has been removed of the article {$article_id}", 200);
	}

	public function validateRequest(Request $request){

		$rules = [
			'content' => 'required'
		];

		$this->validate($request, $rules);
	}

	public function isAuthorized(Request $request){

		$resource  = "comments";
		$comment   = Comment::find($this->getArgs($request)["comment_id"]);

		return $this->authorizeUser($request, $resource, $comment);
	}
}