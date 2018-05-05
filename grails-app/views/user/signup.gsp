<div class="container">
    <div id="signup_box" style="display: none; margin-top: 50px;" class="mainbox col-md-5 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Регистрация</div>
            </div>

            <div class="panel-body">
                <g:form id="signup_form" class="form-horizontal" role="form" controller="user" action="do_signup">
                    <g:if test="${user?.hasErrors()}">
                        <div id="signup_alert" class="alert alert-danger">
                            <p>Error:</p>
                            <span></span>
                        </div>
                    </g:if>

                    <div class="form-group">
                        <label for="email" class="col-md-3 control-label">Email</label>
                        <div class="col-md-12">
                            <g:textField class="form-control" name="email" placeholder="Email"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstName" class="col-md-3 control-label">Имя</label>
                        <div class="col-md-12">
                            <g:textField class="form-control" name="firstName" placeholder="Имя"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="lastName" class="col-md-3 control-label">Фамилия</label>
                        <div class="col-md-12">
                            <g:textField class="form-control" name="lastName" placeholder="Фамилия"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label">Пароль</label>
                        <div class="col-md-12">
                            <g:passwordField class="form-control" name="password" placeholder="Пароль"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="confirm" class="col-md-9 control-label">Подтверждение пароля</label>
                        <div class="col-md-12">
                            <g:passwordField class="form-control" name="confirm" placeholder="Подтвердите пароль"/>
                        </div>
                    </div>

                    <div class="form-group" style="margin-top: 20px">
                        <div class="col-md-offset-2 col-md-10">
                            <g:submitButton id="btn_signup" class="btn btn-info col-md-9" name="Зарегистрироваться">
                                <i class="icon-hand-right"></i> &nbsp Зарегистрироваться
                            </g:submitButton>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>