<?php

$metadata['https://login.aaiedu.hr/sso/saml2/idp/metadata.php'] = array (
  'metadata-set' => 'saml20-idp-remote',
  'entityid' => 'https://login.aaiedu.hr/sso/saml2/idp/metadata.php',
  'SingleSignOnService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://login.aaiedu.hr/sso/saml2/idp/SSOService.php',
    ),
  ),
  'SingleLogoutService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://login.aaiedu.hr/sso/saml2/idp/SingleLogoutService.php',
    ),
  ),
  'keys' => 
  array (
    0 => 
    array (
      'type' => 'X509Certificate',
      'signing' => true,
      'encryption' => true,
      'X509Certificate' => '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',
    ),
    1 => 
    array (
      'type' => 'X509Certificate',
      'signing' => true,
      'encryption' => false,
      'X509Certificate' => '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',
    ),
  ),
  'NameIDFormat' => 'urn:oasis:names:tc:SAML:2.0:nameid-format:transient',
  'OrganizationName' => 
  array (
    'en' => 'AAI@EduHr',
    'hr' => 'AAI@EduHr',
  ),
  'OrganizationDisplayName' => 
  array (
    'en' => 'AAI@EduHr - Croatian Research and Education Federation',
    'hr' => 'AAI@EduHr - Autentikacijska i autorizacijska infrastruktura sustava znanosti i visokog obrazovanja u Republici Hrvatskoj',
  ),
  'OrganizationURL' => 
  array (
    'en' => 'http://www.aaiedu.hr',
    'hr' => 'http://www.aaiedu.hr',
  ),
  'UIInfo' => 
  array (
    'DisplayName' => 
    array (
      'en' => 'AAI@EduHr Single Sign-On Service',
      'hr' => 'AAI@EduHr sustav jedinstvene autentikacije korisnika',
    ),
    'Description' => 
    array (
      'en' => 'Central Login Service for the AAI@EduHr Federation with implemented Single Sign-On Feature',
      'hr' => 'Središnji autentikacijski servis AAI@EduHr federacije s implementiranim sustavom jedinstvene autentikacije korisnika',
    ),
  ),
  'contacts' => 
  array (
    0 => 
    array (
      'emailAddress' => 'dubravko.voncina@srce.hr',
      'contactType' => 'technical',
      'givenName' => 'Dubravko',
      'surName' => 'Voncina',
    ),
  ),
);


$metadata['https://login.aaiedu.hr/proxy/saml2/idp/metadata.php'] = array (
  'metadata-set' => 'saml20-idp-remote',
  'entityid' => 'https://login.aaiedu.hr/proxy/saml2/idp/metadata.php',
  'SingleSignOnService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://login.aaiedu.hr/proxy/saml2/idp/SSOService.php',
    ),
  ),
  'SingleLogoutService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://login.aaiedu.hr/proxy/saml2/idp/SingleLogoutService.php',
    ),
  ),
  'keys' => 
  array (
    0 => 
    array (
      'type' => 'X509Certificate',
      'signing' => true,
      'encryption' => true,
      'X509Certificate' => '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',
    ),
    1 => 
    array (
      'type' => 'X509Certificate',
      'signing' => true,
      'encryption' => false,
      'X509Certificate' => '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',
    ),
  ),
  'NameIDFormat' => 'urn:oasis:names:tc:SAML:2.0:nameid-format:transient',
);


$metadata['fed-lab.aaiedu.hr'] = array (
  'metadata-set' => 'saml20-idp-remote',
  'entityid' => 'fed-lab.aaiedu.hr',
  'SingleSignOnService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://fed-lab.aaiedu.hr/sso/saml2/idp/SSOService.php',
    ),
  ),
  'SingleLogoutService' => 
  array (
    0 => 
    array (
      'Binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect',
      'Location' => 'https://fed-lab.aaiedu.hr/sso/saml2/idp/SingleLogoutService.php',
    ),
  ),
  'certData' => 'MIIEnDCCA4SgAwIBAgIQZsEiOOzD3upFNDGfG0ckcTANBgkqhkiG9w0BAQsFADBkMQswCQYDVQQGEwJOTDEWMBQGA1UECBMNTm9vcmQtSG9sbGFuZDESMBAGA1UEBxMJQW1zdGVyZGFtMQ8wDQYDVQQKEwZURVJFTkExGDAWBgNVBAMTD1RFUkVOQSBTU0wgQ0EgMjAeFw0xNTA1MDUwMDAwMDBaFw0xODA1MDQyMzU5NTlaMD8xITAfBgNVBAsTGERvbWFpbiBDb250cm9sIFZhbGlkYXRlZDEaMBgGA1UEAxMRZmVkLWxhYi5hYWllZHUuaHIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDNV9ZboXXkbR0BfRPeNNRUabsRdcWjC3mobIsg54xR13W3UWmJTuBEB2fEPxpg+2AeqIQ+WD3Co4iIPLUZ+xsIjbusRMnpMDYq9Itvxrll6RiC1MhqN2uBlIVn+6SV0995VeVKSBtPMjW7r67+qbES686lPTNP/L+UHsiRSvZhvASHc5VXegClDFX5S/TyM3rPXIoph88/hYlYLqKcoeTaRM4hxN0g8PGK4k31xPWdH8hHM4+7S6ha2SXVk3hW9G4Nil6BWWGV/dZXdKfAMRcJ9dhbnbFyHft/lQYXxcrBd6DIN6R9C5LuaMrnEBHDc/aOFbRaakVyzAaLcTUM+/srAgMBAAGjggFtMIIBaTAfBgNVHSMEGDAWgBRb0IocmjJb4LXdllQb4YYosP22vTAdBgNVHQ4EFgQU9RuRpNXHs85a23OF2GPPJtT0fLAwDgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMCIGA1UdIAQbMBkwDQYLKwYBBAGyMQECAh0wCAYGZ4EMAQIBMDoGA1UdHwQzMDEwL6AtoCuGKWh0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9URVJFTkFTU0xDQTIuY3JsMGwGCCsGAQUFBwEBBGAwXjA1BggrBgEFBQcwAoYpaHR0cDovL2NydC51c2VydHJ1c3QuY29tL1RFUkVOQVNTTENBMi5jcnQwJQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wHAYDVR0RBBUwE4IRZmVkLWxhYi5hYWllZHUuaHIwDQYJKoZIhvcNAQELBQADggEBAH527pqgnBb98FpK0GVp0ZddY3P7qwnczPmGIIsLCvuV3eywhb1JP28p7WhUFSdcWaV3ZAAenqpV+K2gS6PcrfL/KlrMlezxl6FQLYhTA75OcTFpgh1LBvFguid/L0rA3AYBhSPz/rLo7mW/Os+HRq4EoSn3otc6vmuQisWzdEjKbUnEddPIxWuxMIo10rOcqfH1/jvGdhJkVARHqonbja68TRJhNXwhl/ba0NstuT/ubSDqB+IJlWlw1gYBdxnoA4Z+umW9yfBg7CVds8Vkep3jNhhikn2QLwUY7MZhgNdLjtrFsoQ0+R9qMrPWk/md4CKoslUAlGPGNjaoqtVFQZo=',
  'NameIDFormat' => 'urn:oasis:names:tc:SAML:2.0:nameid-format:transient',
);
