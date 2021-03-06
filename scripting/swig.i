%module cigi

%include "std_vector.i"
%include "std_string.i"

%{
#include "CigiAerosolRespV3.h"
#include "CigiAnimationStopV3.h"
#include "CigiAnimationTable.h"
#include "CigiArtPartCtrlV1.h"
#include "CigiArtPartCtrlV2.h"
#include "CigiArtPartCtrlV3.h"
#include "CigiAtmosCtrl.h"
#include "CigiBaseAerosolResp.h"
#include "CigiBaseAnimationStop.h"
#include "CigiBaseArtPartCtrl.h"
#include "CigiBaseCircleSymbolData.h"
#include "CigiBaseCollDetSegDef.h"
#include "CigiBaseCollDetSegResp.h"
#include "CigiBaseCollDetVolDef.h"
#include "CigiBaseCollDetVolResp.h"
#include "CigiBaseCompCtrl.h"
#include "CigiBaseConfClampEntityCtrl.h"
#include "CigiBaseEarthModelDef.h"
#include "CigiBaseEntityCtrl.h"
#include "CigiBaseEnvCondReq.h"
#include "CigiBaseEnvCtrl.h"
#include "CigiBaseEnvRgnCtrl.h"
#include "CigiBaseEventNotification.h"
#include "CigiBaseEventProcessor.h"
#include "CigiBaseHatHotReq.h"
#include "CigiBaseHatHotResp.h"
#include "CigiBaseIGCtrl.h"
#include "CigiBaseIGMsg.h"
#include "CigiBaseLosResp.h"
#include "CigiBaseLosSegReq.h"
#include "CigiBaseLosVectReq.h"
#include "CigiBaseMaritimeSurfaceCtrl.h"
#include "CigiBaseMaritimeSurfaceResp.h"
#include "CigiBaseMotionTrackCtrl.h"
#include "CigiBasePacket.h"
#include "CigiBasePositionReq.h"
#include "CigiBasePositionResp.h"
#include "CigiBaseRateCtrl.h"
#include "CigiBaseSOF.h"
#include "CigiBaseSensorCtrl.h"
#include "CigiBaseSensorResp.h"
#include "CigiBaseShortArtPartCtrl.h"
#include "CigiBaseShortSymbolCtrl.h"
#include "CigiBaseSignalProcessing.h"
#include "CigiBaseSpecEffDef.h"
#include "CigiBaseSymbolCircleDef.h"
#include "CigiBaseSymbolClone.h"
#include "CigiBaseSymbolCtrl.h"
#include "CigiBaseSymbolLineDef.h"
#include "CigiBaseSymbolSurfaceDef.h"
#include "CigiBaseSymbolTextDef.h"
#include "CigiBaseTerrestrialSurfaceCtrl.h"
#include "CigiBaseTerrestrialSurfaceResp.h"
#include "CigiBaseTrajectoryDef.h"
#include "CigiBaseVariableSizePckt.h"
#include "CigiBaseVertexSymbolData.h"
#include "CigiBaseViewCtrl.h"
#include "CigiBaseViewDef.h"
#include "CigiBaseWaveCtrl.h"
#include "CigiBaseWeatherCondResp.h"
#include "CigiBaseWeatherCtrl.h"
#include "CigiCelestialCtrl.h"
#include "CigiCircleSymbolDataV3_3.h"
#include "CigiCnvtInfoType.h"
#include "CigiCollDetSegDefV1.h"
#include "CigiCollDetSegDefV2.h"
#include "CigiCollDetSegDefV3.h"
#include "CigiCollDetSegRespV1.h"
#include "CigiCollDetSegRespV2.h"
#include "CigiCollDetSegRespV3.h"
#include "CigiCollDetVolDefV2.h"
#include "CigiCollDetVolDefV3.h"
#include "CigiCollDetVolRespV2.h"
#include "CigiCollDetVolRespV3.h"
#include "CigiCompCtrlV1.h"
#include "CigiCompCtrlV2.h"
#include "CigiCompCtrlV3.h"
#include "CigiCompCtrlV3_3.h"
#include "CigiConfClampEntityCtrlV3.h"
#include "CigiDefaultPacket.h"
#include "CigiEarthModelDefV3.h"
#include "CigiEntityCtrlV1.h"
#include "CigiEntityCtrlV2.h"
#include "CigiEntityCtrlV3.h"
#include "CigiEntityCtrlV3_3.h"
#include "CigiEnvCondReqV3.h"
#include "CigiEnvCtrlV1.h"
#include "CigiEnvCtrlV2.h"
#include "CigiEnvRgnCtrlV3.h"
#include "CigiErrorCodes.h"
#include "CigiEventNotificationV3.h"
#include "CigiException.h"
#include "CigiExceptions.h"
#include "CigiHatHotReqV3.h"
#include "CigiHatHotReqV3_2.h"
#include "CigiHatHotRespV3.h"
#include "CigiHatHotRespV3_2.h"
#include "CigiHatHotXRespV3.h"
#include "CigiHatHotXRespV3_2.h"
#include "CigiHatReqV1.h"
#include "CigiHatReqV2.h"
#include "CigiHatRespV1.h"
#include "CigiHatRespV2.h"
#include "CigiHoldEnvCtrl.h"
#include "CigiHostSession.h"
#include "CigiHotReqV2.h"
#include "CigiHotRespV2.h"
#include "CigiIGCtrlV1.h"
#include "CigiIGCtrlV2.h"
#include "CigiIGCtrlV3.h"
#include "CigiIGCtrlV3_2.h"
#include "CigiIGCtrlV3_3.h"
#include "CigiIGMsgV2.h"
#include "CigiIGMsgV3.h"
#include "CigiIGSession.h"
#include "CigiIO.h"
#include "CigiIncomingMsg.h"
#include "CigiLosRespV1.h"
#include "CigiLosRespV2.h"
#include "CigiLosRespV3.h"
#include "CigiLosRespV3_2.h"
#include "CigiLosSegReqV1.h"
#include "CigiLosSegReqV2.h"
#include "CigiLosSegReqV3.h"
#include "CigiLosSegReqV3_2.h"
#include "CigiLosVectReqV1.h"
#include "CigiLosVectReqV2.h"
#include "CigiLosVectReqV3.h"
#include "CigiLosVectReqV3_2.h"
#include "CigiLosXRespV3.h"
#include "CigiLosXRespV3_2.h"
#include "CigiMaritimeSurfaceCtrlV3.h"
#include "CigiMaritimeSurfaceRespV3.h"
#include "CigiMessage.h"
#include "CigiMessageBuffer.h"
#include "CigiMotionTrackCtrlV3.h"
#include "CigiOutgoingMsg.h"
#include "CigiPositionReqV3.h"
#include "CigiPositionRespV3.h"
#include "CigiProcessType.h"
#include "CigiRateCtrlV1.h"
#include "CigiRateCtrlV2.h"
#include "CigiRateCtrlV3.h"
#include "CigiRateCtrlV3_2.h"
#include "CigiSOFV1.h"
#include "CigiSOFV2.h"
#include "CigiSOFV3.h"
#include "CigiSOFV3_2.h"
#include "CigiSensorCtrlV1.h"
#include "CigiSensorCtrlV2.h"
#include "CigiSensorCtrlV3.h"
#include "CigiSensorRespV1.h"
#include "CigiSensorRespV2.h"
#include "CigiSensorRespV3.h"
#include "CigiSensorXRespV3.h"
#include "CigiSession.h"
#include "CigiShortArtPartCtrlV3.h"
#include "CigiShortCompCtrlV3.h"
#include "CigiShortCompCtrlV3_3.h"
#include "CigiShortSymbolCtrlV3_3.h"
#include "CigiSignalType.h"
#include "CigiSpecEffDefV1.h"
#include "CigiSpecEffDefV2.h"
#include "CigiSwapping.h"
#include "CigiSymbolCircleDefV3_3.h"
#include "CigiSymbolCloneV3_3.h"
#include "CigiSymbolCtrlV3_3.h"
#include "CigiSymbolLineDefV3_3.h"
#include "CigiSymbolSurfaceDefV3_3.h"
#include "CigiSymbolTextDefV3_3.h"
#include "CigiTerrestrialSurfaceCtrlV3.h"
#include "CigiTerrestrialSurfaceRespV3.h"
#include "CigiTrajectoryDefV1.h"
#include "CigiTrajectoryDefV2.h"
#include "CigiTrajectoryDefV3.h"
#include "CigiTypes.h"
#include "CigiVersionID.h"
#include "CigiVertexSymbolDataV3_3.h"
#include "CigiViewCtrlV1.h"
#include "CigiViewCtrlV2.h"
#include "CigiViewCtrlV3.h"
#include "CigiViewDefV1.h"
#include "CigiViewDefV2.h"
#include "CigiViewDefV3.h"
#include "CigiWaveCtrlV3.h"
#include "CigiWeatherCondRespV3.h"
#include "CigiWeatherCtrlV1.h"
#include "CigiWeatherCtrlV2.h"
#include "CigiWeatherCtrlV3.h"
%}

// "None" is a reserved word in Python; the following will 
// rename uses of None in the CCL...
%rename(NoCloud) CigiBaseWeatherCtrl::None;
%rename(NoDatum) CigiBaseShortSymbolCtrl::None;

%include CigiBasePacket.h
%include CigiBaseVariableSizePckt.h
%include CigiSession.h
%include CigiMessage.h

%include CigiBaseAerosolResp.h
%include CigiBaseAnimationStop.h
%include CigiBaseArtPartCtrl.h
%include CigiBaseCircleSymbolData.h
%include CigiBaseCollDetSegDef.h
%include CigiBaseCollDetSegResp.h
%include CigiBaseCollDetVolDef.h
%include CigiBaseCollDetVolResp.h
%include CigiBaseCompCtrl.h
%include CigiBaseConfClampEntityCtrl.h
%include CigiBaseEarthModelDef.h
%include CigiBaseEntityCtrl.h
%include CigiBaseEnvCondReq.h
%include CigiBaseEnvCtrl.h
%include CigiBaseEnvRgnCtrl.h
%include CigiBaseEventNotification.h
%include CigiBaseEventProcessor.h
%include CigiBaseHatHotReq.h
%include CigiBaseHatHotResp.h
%include CigiBaseIGCtrl.h
%include CigiBaseIGMsg.h
%include CigiBaseLosResp.h
%include CigiBaseLosSegReq.h
%include CigiBaseLosVectReq.h
%include CigiBaseMaritimeSurfaceCtrl.h
%include CigiBaseMaritimeSurfaceResp.h
%include CigiBaseMotionTrackCtrl.h
%include CigiBasePositionReq.h
%include CigiBasePositionResp.h
%include CigiBaseRateCtrl.h
%include CigiBaseSOF.h
%include CigiBaseSensorCtrl.h
%include CigiBaseSensorResp.h
%include CigiBaseShortArtPartCtrl.h
%include CigiBaseShortSymbolCtrl.h
%include CigiBaseSignalProcessing.h
%include CigiBaseSpecEffDef.h
%include CigiBaseSymbolCircleDef.h
%include CigiBaseSymbolClone.h
%include CigiBaseSymbolCtrl.h
%include CigiBaseSymbolLineDef.h
%include CigiBaseSymbolSurfaceDef.h
%include CigiBaseSymbolTextDef.h
%include CigiBaseTerrestrialSurfaceCtrl.h
%include CigiBaseTerrestrialSurfaceResp.h
%include CigiBaseTrajectoryDef.h
%include CigiBaseVertexSymbolData.h
%include CigiBaseViewCtrl.h
%include CigiBaseViewDef.h
%include CigiBaseWaveCtrl.h
%include CigiBaseWeatherCondResp.h
%include CigiBaseWeatherCtrl.h

%include CigiAerosolRespV3.h
%include CigiAnimationStopV3.h
%include CigiAnimationTable.h
%include CigiArtPartCtrlV1.h
%include CigiArtPartCtrlV2.h
%include CigiArtPartCtrlV3.h
%include CigiAtmosCtrl.h
%include CigiCelestialCtrl.h
%include CigiCircleSymbolDataV3_3.h
%include CigiCnvtInfoType.h
%include CigiCollDetSegDefV1.h
%include CigiCollDetSegDefV2.h
%include CigiCollDetSegDefV3.h
%include CigiCollDetSegRespV1.h
%include CigiCollDetSegRespV2.h
%include CigiCollDetSegRespV3.h
%include CigiCollDetVolDefV2.h
%include CigiCollDetVolDefV3.h
%include CigiCollDetVolRespV2.h
%include CigiCollDetVolRespV3.h
%include CigiCompCtrlV1.h
%include CigiCompCtrlV2.h
%include CigiCompCtrlV3.h
%include CigiCompCtrlV3_3.h
%include CigiConfClampEntityCtrlV3.h
%include CigiDefaultPacket.h
%include CigiEarthModelDefV3.h
%include CigiEntityCtrlV1.h
%include CigiEntityCtrlV2.h
%include CigiEntityCtrlV3.h
%include CigiEntityCtrlV3_3.h
%include CigiEnvCondReqV3.h
%include CigiEnvCtrlV1.h
%include CigiEnvCtrlV2.h
%include CigiEnvRgnCtrlV3.h
%include CigiErrorCodes.h
%include CigiEventNotificationV3.h
%include CigiException.h
%include CigiExceptions.h
%include CigiHatHotReqV3.h
%include CigiHatHotReqV3_2.h
%include CigiHatHotRespV3.h
%include CigiHatHotRespV3_2.h
%include CigiHatHotXRespV3.h
%include CigiHatHotXRespV3_2.h
%include CigiHatReqV1.h
%include CigiHatReqV2.h
%include CigiHatRespV1.h
%include CigiHatRespV2.h
%include CigiHoldEnvCtrl.h
%include CigiHostSession.h
%include CigiHotReqV2.h
%include CigiHotRespV2.h
%include CigiIGCtrlV1.h
%include CigiIGCtrlV2.h
%include CigiIGCtrlV3.h
%include CigiIGCtrlV3_2.h
%include CigiIGCtrlV3_3.h
%include CigiIGMsgV2.h
%include CigiIGMsgV3.h
%include CigiIGSession.h
%include CigiIO.h
%include CigiIncomingMsg.h
%include CigiLosRespV1.h
%include CigiLosRespV2.h
%include CigiLosRespV3.h
%include CigiLosRespV3_2.h
%include CigiLosSegReqV1.h
%include CigiLosSegReqV2.h
%include CigiLosSegReqV3.h
%include CigiLosSegReqV3_2.h
%include CigiLosVectReqV1.h
%include CigiLosVectReqV2.h
%include CigiLosVectReqV3.h
%include CigiLosVectReqV3_2.h
%include CigiLosXRespV3.h
%include CigiLosXRespV3_2.h
%include CigiMaritimeSurfaceCtrlV3.h
%include CigiMaritimeSurfaceRespV3.h
%include CigiMessageBuffer.h
%include CigiMotionTrackCtrlV3.h
%include CigiOutgoingMsg.h
%include CigiPositionReqV3.h
%include CigiPositionRespV3.h
%include CigiProcessType.h
%include CigiRateCtrlV1.h
%include CigiRateCtrlV2.h
%include CigiRateCtrlV3.h
%include CigiRateCtrlV3_2.h
%include CigiSOFV1.h
%include CigiSOFV2.h
%include CigiSOFV3.h
%include CigiSOFV3_2.h
%include CigiSensorCtrlV1.h
%include CigiSensorCtrlV2.h
%include CigiSensorCtrlV3.h
%include CigiSensorRespV1.h
%include CigiSensorRespV2.h
%include CigiSensorRespV3.h
%include CigiSensorXRespV3.h
%include CigiShortArtPartCtrlV3.h
%include CigiShortCompCtrlV3.h
%include CigiShortCompCtrlV3_3.h
%include CigiShortSymbolCtrlV3_3.h
%include CigiSignalType.h
%include CigiSpecEffDefV1.h
%include CigiSpecEffDefV2.h
%include CigiSwapping.h
%include CigiSymbolCircleDefV3_3.h
%include CigiSymbolCloneV3_3.h
%include CigiSymbolCtrlV3_3.h
%include CigiSymbolLineDefV3_3.h
%include CigiSymbolSurfaceDefV3_3.h
%include CigiSymbolTextDefV3_3.h
%include CigiTerrestrialSurfaceCtrlV3.h
%include CigiTerrestrialSurfaceRespV3.h
%include CigiTrajectoryDefV1.h
%include CigiTrajectoryDefV2.h
%include CigiTrajectoryDefV3.h
%include CigiTypes.h
%include CigiVersionID.h
%include CigiVertexSymbolDataV3_3.h
%include CigiViewCtrlV1.h
%include CigiViewCtrlV2.h
%include CigiViewCtrlV3.h
%include CigiViewDefV1.h
%include CigiViewDefV2.h
%include CigiViewDefV3.h
%include CigiWaveCtrlV3.h
%include CigiWeatherCondRespV3.h
%include CigiWeatherCtrlV1.h
%include CigiWeatherCtrlV2.h
%include CigiWeatherCtrlV3.h
