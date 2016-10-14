.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 55
    return-void
.end method

.method private static responseToStringHTC(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 61
    sparse-switch p0, :sswitch_data_0

    .line 70
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 62
    :sswitch_0
    const-string/jumbo v0, "UNSOL_ENTER_LPM"

    return-object v0

    .line 63
    :sswitch_1
    const-string/jumbo v0, "UNSOL_CDMA_3G_INDICATOR"

    return-object v0

    .line 64
    :sswitch_2
    const-string/jumbo v0, "UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR"

    return-object v0

    .line 65
    :sswitch_3
    const-string/jumbo v0, "UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL"

    return-object v0

    .line 66
    :sswitch_4
    const-string/jumbo v0, "UNSOL_RESPONSE_PHONE_MODE_CHANGE"

    return-object v0

    .line 67
    :sswitch_5
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    .line 68
    :sswitch_6
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 69
    :sswitch_7
    const-string/jumbo v0, "UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED"

    return-object v0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0x1772 -> :sswitch_4
        0x520c -> :sswitch_5
        0x520d -> :sswitch_6
        0x520f -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 79
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 97
    return-void

    .line 82
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 83
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 84
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 85
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 86
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 87
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 88
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 89
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 110
    :sswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseToStringHTC(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    invoke-static {v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 115
    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0x1772 -> :sswitch_4
        0x520c -> :sswitch_5
        0x520d -> :sswitch_6
        0x520f -> :sswitch_7
    .end sparse-switch

    .line 100
    :sswitch_data_1
    .sparse-switch
        0x5f3 -> :sswitch_8
        0xbc1 -> :sswitch_8
        0xbc4 -> :sswitch_8
        0xbcc -> :sswitch_8
        0x1772 -> :sswitch_8
        0x520c -> :sswitch_8
        0x520d -> :sswitch_8
        0x520f -> :sswitch_8
    .end sparse-switch
.end method
