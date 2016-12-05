{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<table id="total-tab" width="100%">

	<tr>
		<td width="62%"></td>
		<td class="left" width="23%">
			{l s='Total Products' pdf='true'}
		</td>
		<td class="right" width="15%">
			{displayPrice currency=$order->id_currency price=$footer.products_before_discounts_tax_excl}
		</td>
	</tr>

	<tr>
		<td width="100%">
			{l s='Special Notes' pdf='true'}:
		</td>
	</tr>
	{if $footer.product_discounts_tax_incl > 0}
		<tr>
			<td width="62%"></td>
			<td class="left" width="23%">
				{l s='Total Discounts' pdf='true'}
			</td>
			<td class="right" width="15%">
				{displayPrice currency=$order->id_currency price=$footer.product_discounts_tax_incl}
			</td>
		</tr>
	{/if}

	{if $footer.wrapping_tax_incl}
		<tr>
			<td width="62%"></td>
			<td class="left" width="23%">
				{l s='Wrapping Cost' pdf='true'}
			</td>
			<td class="right" width="15%">
				{displayPrice currency=$order->id_currency price=$footer.wrapping_tax_incl}
			</td>
		</tr>
	{/if}


	{if $footer.shipping_tax_incl}
		<tr>
			<td width="62%"></td>
			<td class="left" width="23%">
				{l s='Shipping Costs' pdf='true'}
			</td>
			<td class="right" width="15%">
				{displayPrice currency=$order->id_currency price=$footer.shipping_tax_incl}
			</td>
		</tr>
		
	{/if}


	<tr><td>&nbsp;</td></tr>

	<tr class="bold">
		<td width="62%"></td>
		<td class="left border-top" width="23%">
			{l s='Total' pdf='true'}
		</td>
		<td class="right border-top" width="15%">
			{displayPrice currency=$order->id_currency price=$footer.total_paid_tax_incl}
		</td>
	</tr>
</table>
