-- hotfix RechargeCostActView
xlua.private_accessible(CS.ActPlankItem)
xlua.hotfix(CS.ActPlankItem, 'SetGoalText', function(self)
	--print(' >>>>>>>> Hotfixed ActPlankItem SetGoalText Begin. >>>>>>>> ')
	
	if self.view.currentType== CS.ActivityType.RechargeActView then
		self.text_need.text = CS.UniCore.GameStrings.Format('GLOBAL_RECHARGEACT_MONEY', self.vo.needDiamond);
	else
		self.text_need.text = CS.UniCore.GameStrings.Format('GLOBAL_COSTACT_MONEY', self.vo.needDiamond);
	end
	
	local totalMoney = 0;
    local totalMoneyColor = '';
	if CS.RechargeDaysBagVO.totalDiamond < self.vo.needDiamond then
		self.vo.stage = -1;
		totalMoney = CS.RechargeDaysBagVO.totalDiamond;
		totalMoneyColor = CS.System.String.Format('<color=#FF0000>{0}</color>', totalMoney);
	else
		if self.vo.stage == 1 then
			totalMoney = self.vo.needDiamond;
			totalMoneyColor = CS.System.String.Format('<color=#FFFFFF>{0}</color>', totalMoney);
		else
			totalMoney = CS.RechargeDaysBagVO.totalDiamond;
			totalMoneyColor = CS.System.String.Format('<color=#00FF00>{0}</color>', totalMoney);
		end
	end
	self.money.text = CS.System.String.Format('{0}/{1}', totalMoneyColor, self.vo.needDiamond);
	--print(' >>>>>>>> Hotfixed ActPlankItem SetGoalText End. >>>>>>>> ')
end)