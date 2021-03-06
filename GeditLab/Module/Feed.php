<?php
namespace GeditLab\Module;


require_once('include/items.php');


class Feed extends \GeditLab\Web\Controller {

	function init() {
	
		$params = array();
	
		$params['begin']     = ((x($_REQUEST,'date_begin')) ? $_REQUEST['date_begin']      : NULL_DATE);
		$params['end']       = ((x($_REQUEST,'date_end'))   ? $_REQUEST['date_end']        : '');
		$params['type']      = ((stristr(argv(0),'json'))   ? 'json'                       : 'xml');
		$params['pages']     = ((x($_REQUEST,'pages'))      ? intval($_REQUEST['pages'])   : 0);
		$params['top']       = ((x($_REQUEST,'top'))        ? intval($_REQUEST['top'])     : 0);
		$params['start']     = ((x($params,'start'))        ? intval($params['start'])     : 0);
		$params['records']   = ((x($params,'records'))      ? intval($params['records'])   : 40);
		$params['direction'] = ((x($params,'direction'))    ? dbesc($params['direction'])  : 'desc');
		$params['cat']       = ((x($_REQUEST,'cat'))        ? escape_tags($_REQUEST['cat'])  : '');
	
		$channel = '';
		if(argc() > 1) {
			$r = q("select * from channel left join xchan on channel_hash = xchan_hash where channel_address = '%s' limit 1",
				dbesc(argv(1))
			);
			if(!($r && count($r)))
				killme();
	
			$channel = $r[0];
	
			if(observer_prohibited(true))
				killme();
	 
			logger('mod_feed: public feed request from ' . $_SERVER['REMOTE_ADDR'] . ' for ' . $channel['channel_address']);
	
			echo get_public_feed($channel,$params);
	
			killme();
		}
	
	}
	
	
	
}
