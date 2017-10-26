<?php 

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
	protected $fillable = ['id', 'post_id', 'user_id', 'content'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
	protected $hidden   = ['created_at', 'updated_at'];

    /**
     * Define an inverse one-to-many relationship with App\Article.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
	public function article(){
		return $this->belongsTo('App\Article');
	}

}