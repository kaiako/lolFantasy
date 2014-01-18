package object

import enums.Positions

class Settings {
	
	PointSetting top;	
	PointSetting mid;	
	PointSetting jungle;	
	PointSetting adc;	
	PointSetting support;
	PointSetting proteam;
	
	def getPositionSetting(Positions pos){
		switch(pos){
			case Positions.TOP:
				return top;
			case Positions.MID:
				return mid;
			case Positions.JUNGLE:
				return jungle;
			case Positions.ADC:
				return adc;
			case Positions.SUPPORT:
				return support;
			case Positions.TEAM:
				return proteam;
			default:
				return null;
		}
	}
	

}
