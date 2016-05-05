<?php

namespace App;

use DB;

class BlogPostTag extends BaseModel {

    protected $fillable = array('post_id', 'tag_id');

    public static function postTags($id) {
        $tags = DB::table('blog_post_tags')
                ->join('blog_tags', 'blog_post_tags.tag_id', '=', 'blog_tags.id')
                ->where('blog_post_tags.post_id', '=', $id)
                ->get();

        return $tags;
    }
}
