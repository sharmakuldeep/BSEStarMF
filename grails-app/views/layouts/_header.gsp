<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="" href="#" style="margin: 5px">
                <g:img file="PaceLogo.png" dir="/images" style="height: 60px"/>
            </a>
        </div>
        <sec:ifLoggedIn>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" style="margin-left: 20px">
                <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            %{--<form class="navbar-form navbar-left">--}%
                %{--<div class="form-group">--}%
                    %{--<input type="text" class="form-control" placeholder="Search">--}%
                %{--</div>--}%
                %{--<button type="submit" class="btn btn-default">Submit</button>--}%
            %{--</form>--}%
            <ul class="nav navbar-nav navbar-right" style="color: dodgerblue">
                %{--<li><a href="#">Link</a></li>--}%
                %{--<li class="dropdown">--}%
                    %{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>--}%
                    %{--<ul class="dropdown-menu">--}%
                        %{--<li><a href="#">Action</a></li>--}%
                        %{--<li><a href="#">Another action</a></li>--}%
                        %{--<li><a href="#">Something else here</a></li>--}%
                        %{--<li role="separator" class="divider"></li>--}%
                        %{--<li><a href="#">Separated link</a></li>--}%
                    %{--</ul>--}%
                %{--</li>--}%
                <li>
                            <se class="university-session-management">
                       Welcome     <sec:username/>

                </li>
            <li>||<g:link controller="user" action="userProfile" style="display: inline;padding: 1px 1px;color: blue">Profile</g:link></li>
            <li>||<g:link controller="logout" style="display: inline;padding: 1px 1px;color: red">Logout</g:link></li>
            </ul>
        </div><!-- /.navbar-collapse -->
        </sec:ifLoggedIn>
    </div><!-- /.container-fluid -->
</nav>