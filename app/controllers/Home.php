<?php

class Home extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Toets MVC-framework'
        ];

        $this->view('home/index', $data);
    }
}