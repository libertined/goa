(function() {

	'use strict';

	BX.namespace('BX.Landing');

	BX.Landing.PaymentAlert = function(params)
	{
		if (typeof params.nodes === 'undefined')
		{
			return;
		}

		var msg = BX.Landing.UI.Tool.ActionDialog.getInstance();
		
		for (var i = 0, c = params.nodes.length; i < c; i++)
		{
			BX.bind(params.nodes[i], 'click', function(e)
			{
				var promise = msg.show({
					title: params.title,
					content: '<div class="landing-payrate-popup-content"><span class="landing-payrate-popup-text">' + 
								params.message + 
							'</span></div>',
					confirm: BX.message('LANDING_TPL_JS_PAY_TARIFF'),
					contentColor: 'grey'
				});
				promise
					.then(function()
						{
							top.window.location.href = '/settings/license_all.php';
						},
						function()
						{
						}
					);

				BX.PreventDefault(e);
			});
		}
	};
})();