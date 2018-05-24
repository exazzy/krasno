<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link class="navbar-brand" controller="main">Грузоперевозки</g:link>
        </div>
        <div class="navbar-collapse collapse">
                <g:if test="${!session.user}">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="navbar-right" href="${g.createLink(controller: 'user', action: 'login')}">Войти</a></li>
                        <li><a class="navbar-right" href="${g.createLink(controller: 'user', action: 'register')}">Зарегистрироваться</a></li>
                    </ul>
                </g:if>
                <g:else>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <div class="user-menu-icon"></div>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:alert('Смотрите во всех кинатеатрах. В июне...')">Профиль</a>
                                <li role="separator" class="divider">
                                <li><g:link controller="user" action="logout">Выйти</g:link>
                            </ul>
                        </li>
                    </ul>
                </g:else>
        </div>
    </div>
</nav>
