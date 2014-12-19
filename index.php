<?php 

$f3 = require('lib/base.php');

$f3->set('DEBUG',3);
$f3->set('UI','views/');

$f3->route('GET /',
    function($f3) {
        $f3->set('pagetitle','Página principal');
        $f3->set('content',null);
        //echo Template::instance()->render('base_layout.html');
        //echo 'Hello, world!';
    }
);

$f3->route('GET /hello/@name',
    function($f3,$params) {
    	$f3->set('pagetitle','Página Hola!!!');
        $f3->set('name',$params['name']);
        $f3->set('amigos',array(
            'Rubén','Roberto','José',
            'Miguel','Samuel'));
        $f3->set('content','hello.html');
        echo Template::instance()->render('base_layout.html');
    }
);


$f3->route('GET /clases',
    function($f3) {
        $clases = array('DAW1' => array('alu1daw1','alu2daw1'),
                    'DAW2' => array('alu1daw2','alu2daw2',67),
                    'ASIR1' => array(10,20,30),
                    'ASIR2' => array('as2','as3','as3')
                    );
        $f3->set('pagetitle','Listado de clases');
        $f3->set('clases',$clases);
        $f3->set('content','clases.html');
        echo Template::instance()->render('base_layout.html');
    });


$f3->route('GET /redirect',
    function($f3) {
        $f3->reroute('http://iesconselleria.edu.gva.es');
    }


);


/*function afterroute() {
    //echo Template::instance()->render('base_layout.html'
    echo Template::serve('base_layout.htm');
}*/



$f3->run();

?>