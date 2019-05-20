<script type="text/javascript">
	// Some default/necessary JS
	var ERR_NO_SINGLE_QUOTE = '{$APP.ERR_NO_SINGLE_QUOTE}';
	var cannotEq = "{$APP.ERR_DECIMAL_SEP_EQ_THOUSANDS_SEP}";

	{literal}
	function verify_data(formName) {
		var f = document.getElementById(formName);
		for (i = 0; i < f.elements.length; i++) {
			if (f.elements[i].value == "'") {
				alert(ERR_NO_SINGLE_QUOTE + " " + f.elements[i].name);
				return false;
			}
		}
		return true;
	}
	{/literal}
</script>

<BR>

<form id="DrupalConnectorSettings" name="DrupalConnectorSettings" enctype='multipart/form-data' method="POST" 
action="index.php?module=Administration&action=drupal_connector&process=true">
	{* A block displaying error message (if any) *}
	<span class='error'>{$error.main}</span>
	<table width="100%" cellpadding="0" cellspacing="0" border="0" class="actionsContainer">
		<tr>
			<td>
				<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary"
				type="submit" name="save" onclick="return verify_data('DrupalConnectorSettings');" value="{$APP.LBL_SAVE_BUTTON_LABEL}" /> 
				<input title="{$MOD.LBL_CANCEL_BUTTON_TITLE}" onclick="document.location.href='index.php?module=Administration&action=index'"
				class="button" type="button" name="cancel" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" />
				{* TODO: Action on click *}
				<input title="Test connection" class="button" type="button" name="test-connection" 
				onclick="window.location='index.php?module=Administration&action=test_drupal_connection'" value="Test connection" />
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
		<tr>
			<th align="left" scope="row" colspan="2"><h4>Drupal Connector configurations</h4></th>
		</tr>
		<tr>
			<td nowrap width="10%" scope="row">URL:</td>
			<td width="70%"><input type='text' name='drupal_url' size="60" value='{$DRUPAL_URL}'></td>
		</tr>
		<tr>
			<td nowrap width="10%" scope="row">Username:</td>
			<td width="70%"><input type='text' name='drupal_username' size="60" value='{$DRUPAL_USERNAME}'></td>
		</tr>
		<tr>
			<td nowrap width="10%" scope="row">Password:</td>
			<td width="70%"><input type='password' name='drupal_password' size="60" value='{$DRUPAL_PASSWORD}'></td>
		</tr>
	</table>
	<div style="padding-top: 2px;">
		<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary"
		type="submit" name="save" onclick="return verify_data('DrupalConnectorSettings');" value="{$APP.LBL_SAVE_BUTTON_LABEL}" />
		<input title="{$MOD.LBL_CANCEL_BUTTON_TITLE}" onclick="document.location.href='index.php?module=Administration&action=index'"
		class="button" type="button" name="cancel" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" />
		{* TODO: Action on click *}
		<input title="Test connection" class="button" type="button" name="test-connection" 
		onclick="window.location='index.php?module=Administration&action=test_drupal_connection'" value="Test connection" />
	</div>
	{$JAVASCRIPT}
</form>