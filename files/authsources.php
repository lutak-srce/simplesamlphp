<?php

$config = array(

    'admin' => array(
                           'core:AdminPassword',
    ),

    'default-sp' => array(
                           'saml:SP',
                           'entityID' => null,
                           'idp' => 'https://login.aaiedu.hr/sso/saml2/idp/metadata.php',
                           'discoURL' => null,
    ),

    'proxy-sp' => array(
                           'saml:SP',
                           'entityID' => null,
                           'idp' => 'https://login.aaiedu.hr/proxy/saml2/idp/metadata.php',
                           'discoURL' => null,
    ),

    'fedlab-sp' => array(
                          'saml:SP',
                          'entityID' => null,
                          'idp' => 'https://fed-lab.aaiedu.hr/sso/saml2/idp/metadata.php',
                          'discoURL' => null,
    ),
    
    'fedlab-proxy-sp' => array(
                          'saml:SP',
                          'entityID' => null,
                          'idp' => 'https://fed-lab.aaiedu.hr/proxy/saml2/idp/metadata.php',
                          'discoURL' => null,
    ),
);

