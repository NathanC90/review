<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
  <!--Icon Tags start -->
  <link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
  <link rel="manifest" href="/manifest.json">
  
  <!--Icon Tags end -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Viewport Meta Tag -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    Animal Shelter
  </title>
  <!-- Bootstrap -->
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
  <!-- Main Style -->
  <link rel="stylesheet" type="text/css" href="/css/main.css">
  <!-- Slicknav Css -->
  <link rel="stylesheet" type="text/css" href="/css/slicknav.css">

  <!-- Responsive Style -->
  <link rel="stylesheet" type="text/css" href="/css/responsive.css">
  <!--Fonts-->
  <link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
  <link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

  <!-- Extras -->
  <link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
  <link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
  <link rel="stylesheet" type="text/css" href="/extras/animate.css">
  <link rel="stylesheet" type="text/css" href="/extras/normalize.css">


  <!-- Color CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
</head>

<body>

  <!-- Header area wrapper starts -->
  <header id="header-wrap">
    <!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
  </header>
  <!-- Header-wrap Section End -->

  <!-- Page Header -->
  <div class="page-header-section">
    <div class="container">
      <div class="row">
        <div class="page-header-area">
          <div class="page-header-content">
            <h2>Blog Sidebar Left</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page Header End -->

  <!-- Classic Blog Section -->
  <section class="classic-blog-section section">
    <div class="container">
      <div class="row">
        <!-- Blog Sidebar Section -->
        <div class="col-md-3">
          <div class="sidebar-area">
            <!-- Search Bar -->
            <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
              <form>
                <input type="text" placeholder="Search" class="form-control">
                <button type="submit">
                  <i class="fa fa-search"></i>
                </button>
              </form>
            </aside>
            <!-- Text Widgets -->
            <aside class="widget text-widgets wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Text Widget</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dolorem fuga ad corrupti, ullam, eos natus,
                repellat officiis sit labore a aspernatur quisquam. In, unde.</p>
            </aside>
            <!-- Recent Post Widgets -->
            <aside class="widget popular-post wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Popular Post</h2>
              <ul>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="/images/blog/avatar/avatar1.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Principles of UX Design</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 18 hrs ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="/images/blog/avatar/avatar2.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">The unknown mystery of Momy</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 5 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="/images/blog/avatar/avatar3.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">IMDM top 250 Movies</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 6 Days ago</span>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="/images/blog/avatar/avatar4.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="#">Meteor.JS Fundamentals</a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i> 7 Days ago</span>
                    </div>
                  </div>
                </li>
              </ul>
            </aside>
            <!-- Category -->
            <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Category</h2>
              <ul class="category-menu">
                <li>
                  <a href="#">UX Design (21)</a>
                </li>
                <li>
                  <a href="#">Photography (19)</a>
                </li>
                <li>
                  <a href="#">Video Editing (16)</a>
                </li>
                <li>
                  <a href="#">Works (7)</a>
                </li>
              </ul>
            </aside>
            <!-- Subscribe Widget -->
            <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Subscribe</h2>
              <div class="subscribe-area">
                <p>Subscribe to our news latter to get regular update and blog posts.</p>
                <form class="form-group">
                  <div class="input-group">
                    <input type="email" class="form-control input-block-level" placeholder="hello@youremail.com">
                  </div>
                  <button type="submit" class="mt-10 btn btn-common btn-block">Subscribe</button>
                </form>
              </div>
            </aside>
            <!-- Tag Cloud -->
            <aside class="widget tag-cloud wow fadeIn" data-wow-delay="0.3s">
              <h2 class="widget-title">Tag clouds</h2>
              <div class="clearfix">
                <ul>
                  <li>
                    <a href="#">Download</a>
                  </li>
                  <li>
                    <a href="#">PSD</a>
                  </li>
                  <li>
                    <a href="#">Coding</a>
                  </li>
                  <li>
                    <a href="#">UI</a>
                  </li>
                  <li>
                    <a href="#">Sublime</a>
                  </li>
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">Hosting</a>
                  </li>
                  <li>
                    <a href="#">Design</a>
                  </li>
                  <li>
                    <a href="#">Arts</a>
                  </li>
                  <li>
                    <a href="#">Marketing</a>
                  </li>
                  <li>
                    <a href="#">Technology</a>
                  </li>
                </ul>
              </div>
            </aside>
          </div>
        </div>
        <!-- End -->

        <!-- BLog Article Section -->
        <div class="col-md-9">
          <!-- Single Blog Post -->
          <c:forEach var="article" items="${articles}">
          <article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s">
            <!-- Author Info -->
            <header class="author-info">
              <h2 class="blog-post-title">
                <a href="#">${article.subject}</a>
              </h2>
              <div class="tag-posted-in">
                <ul class="list-unstyled">
                  <li>
                    <i class="fa fa fa-calendar"></i>
                    <a href="#">${article.postTime}</a>
                  </li>
                  <li>
                    <i class="fa fa-user"></i>
                    <a href="#">${article.postName}</a>
                  </li>
                  <li>
                    <i class="fa fa-pencil-square-o"></i>
                    <a href="#">Pet</a>
                  </li>
                  <li>
                    <i class="fa fa-comments"></i>
                    <a href="#">No comment</a>
                  </li>
                </ul>
              </div>
            </header>
            <!-- Featured Content -->
            <section class="featured-wrapper">
              <a href="#">
                <img src="/images/adopt/cats/ad-cat1.jpg" alt="">
<!--                 /img/blog/blog-post-1.jpg   -->
              </a>
            </section>
            <!-- Post Content -->
           
            <section class="blog-post-content" >
              <div class="blog-post">
<!--               處理文章內容過多問題的CSS -->
                <p style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;line-height:24px;height:72px;">${article.content}</p>
              </div>
            </section>
            <div class="blog-post-footer clearfix">
              <!-- Post Meta -->
              <ul class="post-meta pull-right">
                <li>
                  <span>
                    <a href="#">
                      <i class="fa fa-comments"></i> 25</a>
                  </span>
                </li>
                <li>
                  <span>
                    <a href="#">
                      <i class="fa fa-thumbs-up"></i> 250</a>
                  </span>
                </li>
                <li>
                  <span>
                    <a href="#">
                      <i class="fa fa-share"></i> Share</a>
                  </span>
                </li>
              </ul>
              <a href="#" class="pull-left btn btn-common btn-xs">Read more</a>
            </div>
          </article>
          </c:forEach>
          <!-- Slider Post -->
          
          
          
<!--           <article class="blog-post-wrapper format-slider wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Microw photography Basics</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <div id="carousel-image-slider" class="owl-carousel"> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-01.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-02.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-03.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-04.jpg" alt=""> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Video Post -->
<!--           <article class="blog-post-wrapper format-video wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Fundamental of video editing</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <iframe height="350" width="100%" src="https://www.youtube.com/embed/JGobj8RGMs4" frameborder="0" allow="autoplay; encrypted-media" -->
<!--                 allowfullscreen></iframe> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           No thumbnail Post -->
<!--           <article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Post without featured image</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Audio Post -->
<!--           <article class="blog-post-wrapper format-audio wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Soundcloud audio embed post</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <iframe width="100%" height="200" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/181436429&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Quote Post -->
<!--           <article class="blog-post-wrapper format-qoute wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <blockquote class="blockquote"> -->
<!--                 <p>Infuse your life with action. Don't wait for it to happen. Make it happen. Make your own future. Make your -->
<!--                   own hope. Make your own love. And whatever your beliefs, honor your creator, not by passively waiting for -->
<!--                   grace to come down from upon high, but by doing what you can to make grace happen... yourself, right now, -->
<!--                   right down here on Earth.</p> -->
<!--                 <a href="#"> -->
<!--                   <span>- Bradley Whitford</span> -->
<!--                 </a> -->
<!--               </blockquote> -->
<!--             </section> -->
<!--           </article> -->

          <!-- Blog Pagination -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
            <nav aria-label="..." class="">
              <ul class="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-label="Previous">
                    <i class="fa fa-angle-left"></i>
                    Prev
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                  </a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    Next
                    <i class="fa fa-angle-right"></i>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- End -->
      </div>
    </div>
  </section>
  <!-- Classic Blog Section End -->

  <!-- Footer Section -->
  <footer>
    <!-- Container Starts -->
    <div class="container">
      <!-- Row Starts -->
      <div class="row section">
        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            About Us
          </h3>
          <p>
            Etiam ornare condimentum massa et scelerisque. Mauris nibh ipsum, laoreet at venenatis ac,
          </p>
          <ul class="mb-3">
            <li>
              <i class="fa fa-map-marke"></i> Nash Street , Dearborn, Michigan</li>
            <li>
              <i class="fa fa-phone"></i> +68 313-240-405</li>
            <li>
              <i class="fa fa-phone"></i> +68 32-543-876</li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Quick Links
          </h3>
          <ul class="menu">
            <li>
              <a href="#">About Us</a>
            </li>
            <li>
              <a href="#">Team</a>
            </li>
            <li>
              <a href="#">Terms of Service</a>
            </li>
            <li>
              <a href="#">Sitemap</a>
            </li>
            <li>
              <a href="#">FAQ</a>
            </li>
            <li>
              <a href="#">Events</a>
            </li>
            <li>
              <a href="#">Contact</a>
            </li>
            <li>
              <a href="#">Blog</a>
            </li>
            <li>
              <a href="#">Branches</a>
            </li>
            <li>
              <a href="#">Press Kits</a>
            </li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Popular Posts
          </h3>
          <ul class="image-list">
            <li>
              <figure class="overlay">
                <img class="img-fluid" src="/images/art/a1.jpg" alt="">
              </figure>
              <div class="post-content">
                <h6 class="post-title">
                  <a href="blog-single.html">Business Management Tutorials</a>
                </h6>
                <div class="meta">
                  <span class="date">5 Comments</span>
                </div>
              </div>
            </li>
            <li>
              <figure class="overlay">
                <img class="img-fluid" src="/images/art/a2.jpg" alt="">
              </figure>
              <div class="post-content">
                <h6 class="post-title">
                  <a href="blog-single.html">Top 10 Business Apps and Web Tools</a>
                </h6>
                <div class="meta">
                  <span class="date">2 Comments</span>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Newsletter
          </h3>
          <form>
            <input type="text" placeholder="Email here">
            <button type="submit">
              <i class="fa fa-paper-plane-o"></i>
            </button>
          </form>
          <div class="flicker-gallery">
            <h3 class="small-title">
              Instagram
            </h3>
            <a href="#" title="Pan Masala">
              <img src="/images/flicker/img1.jpg" alt="">
            </a>
            <a href="#" title="Sports Template for Joomla">
              <img src="/images/flicker/img2.jpg" alt="">
            </a>
            <a href="" title="Apple Keyboard">
              <img src="/images/flicker/img3.jpg" alt="">
            </a>
          </div>
        </div>
        <!-- Footer Widget Ends -->
      </div>
      <!-- Row Ends -->
    </div>
    <!-- Container Ends -->

    <!-- Copyright -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <p class="copyright-text">
              Â© 2018 Engage All right reserved, Designed by
              <a href="#">GrayGrids</a>
            </p>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="social-footer text-right">
              <a href="#">
                <i class="fa fa-facebook icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-twitter icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-linkedin icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-google-plus icon-round"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Copyright  End-->

  </footer>
  <!-- Footer Section End-->

  <!-- Go To Top Link -->
  <a href="#" class="back-to-top">
    <i class="fa fa-angle-up">
    </i>
  </a>

  <!-- JavaScript & jQuery Plugins -->
  <script src="/js/jquery-min.js"></script>
  <script src="/js/popper.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/jquery.mixitup.js"></script>
  <script src="/js/smoothscroll.js"></script>
  <script src="/js/wow.js"></script>
  <script src="/js/owl.carousel.js"></script>
  <script src="/js/waypoints.min.js"></script>
  <script src="/js/jquery.counterup.min.js"></script>
  <script src="/js/jquery.slicknav.js"></script>
  <script src="/js/jquery.appear.js"></script>
  <script src="/js/form-validator.min.js"></script>
  <script src="/js/contact-form-script.min.js"></script>
  <script src="/js/main.js"></script>

</body>

</html>