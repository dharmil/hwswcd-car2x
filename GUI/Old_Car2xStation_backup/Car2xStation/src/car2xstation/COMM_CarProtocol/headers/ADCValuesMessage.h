//This header file was generated by ComBuilder on 17.03.2014 18:01:05

/**********************************************************************************
File Description:
This file contains the header of one SubMessage of the sensor ADC.
For general sensor information see '../sensors/'ADCSensor.h

All messages have to be understand by Nios2 and Linux-PC. Please use the flag
CENTRAL_ECU_BUILD to distinguish the different builds!

**********************************************************************************/


/**********************************************************************************
SubMessage Description:
Contains the values of requested channels.
**********************************************************************************/

#ifndef ADCVALUESMESSAGE_H_
#define ADCVALUESMESSAGE_H_

// Import Interfaces
#include "CarMessage.h"

class CADCValuesMessage : public CCarMessage
{
public:
	CADCValuesMessage(alt_u8 uiChannelNumbers[]);
	CADCValuesMessage(alt_u8* pMessage, int iLength);
	virtual ~CADCValuesMessage();
	void answerMessage(alt_u8 uiChannelNumbers[], alt_u16 uiChannelValues[]);
	void doAction();
	bool getBytes(alt_u8* pMessage);
	alt_u32 getLength();

	const alt_u8* getUiChannelNumbers() const {
		return m_uiChannelNumbers;
	}

	const alt_u16* getUiChannelValues() const {
		return m_uiChannelValues;
	}

private:
	alt_u8 m_uiChannelNumbers[2];
	alt_u16 m_uiChannelValues[2];

    void parseMessage(alt_u8 *pMessage, int iLength);

};

#endif /* ADCVALUESMESSAGE_H_ */