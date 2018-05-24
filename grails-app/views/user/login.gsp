<div class="container">
    <div id="login_box" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info" >
            <div class="panel-heading">
                <div class="panel-title">Вход</div>
                %{--<div style="float:right; font-size: 80%; position: relative; top: -10px"><a href="#">Забыли пароль?</a></div>--}%
            </div>

            <div style="padding-top: 30px" class="panel-body" >

                <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                <g:form id="login_form" class="form-horizontal" role="form" action="login">
    
                    <g:if test="${flash.message}">
                        <div id="register_alert" class="alert alert-danger">
                            ${flash.message}
                        </div>
                    </g:if>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <g:textField id="login_email" class="form-control" name="email" value="${email}" placeholder="Email"/>
                    </div>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="login_password" type="password" class="form-control" name="password" placeholder="Пароль">
                    </div>

%{--
                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input id="login_remember" type="checkbox" name="remember" value="1"> Запомнить меня
                            </label>
                        </div>
                    </div>
--}%

                    <div class="form-group" style="margin-top: 30px">
                        <div class="col-md-offset-2 col-md-10">
                            <g:submitButton id="btn_signup" class="btn btn-info col-md-9" name="Войти"/>
                        </div>
                    </div>

                </g:form>
            </div>
        </div>
    </div>
</div>
