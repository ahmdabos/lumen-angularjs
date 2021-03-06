<?php 

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
	protected $fillable = ['id', 'user_id', 'title', 'content','published_at','image'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
	protected $hidden   = ['created_at', 'updated_at'];

    /**
     * Define a one-to-many relationship with App\Comment
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
	public function comments(){
		return $this->hasMany('App\Comment');
	}

}