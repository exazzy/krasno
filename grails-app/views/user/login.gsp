<div class="container">
    <div id="login_box" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info" >
            <div class="panel-heading">
                <div class="panel-title">Вход</div>
                <div style="float:right; font-size: 80%; position: relative; top: -10px"><a href="#">Забыли пароль?</a></div>
            </div>

            <div style="padding-top: 30px" class="panel-body" >

                <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                <g:form id="login_form" class="form-horizontal" role="form" controller="user" action="do_login">
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <g:textField id="login_username" class="form-control" name="username" value="" placeholder="Имя пользователя или пароль"/>
                    </div>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="login_password" type="password" class="form-control" name="password" placeholder="Пароль">
                    </div>

                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input id="login_remember" type="checkbox" name="remember" value="1"> Запомнить меня
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12 control">
                            <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%" >
                                Еще не зарегистрированы!
                                <a href="#" onClick="$('#login_box').hide(); $('#signup_box').show()">
                                    Регистрация
                                </a>
                            </div>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
