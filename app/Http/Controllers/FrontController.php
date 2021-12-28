<?php

namespace App\Http\Controllers;
use App\Models\NewsCategory;
use App\Models\Contact;
use App\Models\Social;
use App\Models\System;
use App\Models\Page;
use App\Models\News;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use League\CommonMark\Inline\Element\Code;

class FrontController extends Controller
{
    
    public function __construct()
    {
        @session_start();
        // logo
        $logo = System::select('Description')->where('Code', 'logo')->first();
        view()->share('logo', $logo);

        //favicon
        $favicon = System::select('Description')->where('Code', 'favicon')->first();
        view()->share('favicon', $favicon);

        //social
        $Social = Social::where('Status' ,1)->selectRaw('Name, Font, Alias')->orderBy('Sort', 'ASC')->get();
        view()->share('Social', $Social);

        //page
        $Page = Page::where('Status' ,1)->selectRaw('Name, Font, Alias')->orderBy('Sort', 'ASC')->get();
        view()->share('Page', $Page);

        //copyright
        $Copyright = System::select('Description')->where('Code', 'copyright')->first();
        view()->share('copyright', $Copyright);
    }
    public function home()
    {
        $News = DB::table('News as a')
        ->join('news_cat as b', 'a.RowIDCat', '=' , 'b.RowID')
        ->selectRaw('a.*, b.Name as CategoryName')
        ->where('a.RowIDCat',1)
        ->orderBy('a.RowId','DESC')
        ->limit(25)->get();
        return view('frontend.home.home',compact('News'));
    }
    public function about()
    {
        $PageInfor = Page::where('status',1)->where('Alias', 'gioi-thieu')
        ->selectRaw('Name , Alias')->first();
        return view('frontend.about.about', compact('PageInfor'));
    }
    public function contact()
    {
        $PageInfor = Page::where('status',1)->where('Alias', 'lien-he')
        ->selectRaw('Name , Alias')->first();
        return view('frontend.contact.contact', compact('PageInfor'));
    }
     public function contactSendEmail(Request $request)
    {
        if($request->txtemail != ''
            && $request->txtname != ''
            && $request->txtphone != ''
            && $request->txtmessage != ''
        ){
            $Contact = new Contact;
            $Contact->Name = $request->txtname;
            $Contact->Phone = $request->Phone;
            $Contact->Email = $request->txtemail;
            $Contact->Message = $request->txtmessage;
            $Flag =$Contact->save();
            if($Flag == true){
                echo 'finish';
            } else{
                echo 'error';
            }
        }else{
            echo 'error_empty';
        }
        return view('frontend.contact.contact', compact('PageInfor'));
    }
    public function slug($slug)
    {
        $newCat = Page::where('Status',1)->where('Alias',$slug)->first();
        if(isset($newCat) && $newCat != NULL){
            $listNew = DB::table('news as a')
            ->join('news_cat as b', 'a.RowIDCat', '=', 'b.RowID')
            ->where('a.Status', 1)
            ->selectRaw('a.Alias, a.Name, a.Images, a.SmallDescription')
            ->get();
        }

        return view('frontend.news.cat', compact('newCat', 'listNew'));
        

    }
    public function slugHtml($slug, Request $request)
    {
        $newDetail = DB::table('news as a')
        ->where('a.Status', 1)
        ->join('news_cat as b', 'a.RowIDCat', '=', 'b.RowID')
        ->selectRaw('a.Alias, a.Name, a.Images, a.SmallDescription')
        ->first();
        return view('frontend.about.about', compact('PageInfor'));
    }
}
