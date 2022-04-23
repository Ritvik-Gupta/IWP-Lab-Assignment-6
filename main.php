<?php
// Load XML file
$xml = new DOMDocument;
$xml->load('./xml/tool.xml');

// Load XSL file
$xsl = new DOMDocument;
$xsl->load('./xml/tool.xsl');

// Configure the transformer
$proc = new XSLTProcessor;

// Attach the xsl rules
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
