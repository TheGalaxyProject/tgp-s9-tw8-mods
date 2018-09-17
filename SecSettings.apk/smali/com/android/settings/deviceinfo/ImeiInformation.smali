.class public Lcom/android/settings/deviceinfo/ImeiInformation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiInformation.java"


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private isMultiSIM:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    const-string/jumbo v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_three:Ljava/lang/String;

    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_four:Ljava/lang/String;

    const-string/jumbo v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_five:Ljava/lang/String;

    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_six:Ljava/lang/String;

    const-string/jumbo v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_seven:Ljava/lang/String;

    const-string/jumbo v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_eight:Ljava/lang/String;

    const-string/jumbo v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_nine:Ljava/lang/String;

    return-void
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x1

    :goto_e
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_26

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_23

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_e

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_d
    :goto_d
    return-object v1

    :cond_e
    const/16 v2, 0xe

    if-ne v0, v2, :cond_d

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_d
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 10

    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_76

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    :pswitch_3b
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_42
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :pswitch_49
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_50
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_57
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_5d
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_63
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_69
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :pswitch_6f
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3b
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_57
        :pswitch_50
        :pswitch_49
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 10

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_a0

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_b6

    :goto_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    :pswitch_3c
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_43
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_4a
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_50
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_56
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_5c
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_62
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_68
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_6e
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :pswitch_74
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_7b
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_82
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_88
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_8e
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_94
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_9a
    iget-object v3, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_43
        :pswitch_3c
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_82
        :pswitch_7b
        :pswitch_74
    .end packed-switch
.end method

.method private getIMEI(I)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string/jumbo v2, "XAR"

    sget-object v3, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2e

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method private getIccId(I)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method private getMeidNumber(I)Ljava/lang/String;
    .registers 10

    const/16 v7, 0xe

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    const-string/jumbo v2, ""

    :cond_1e
    :goto_1e
    return-object v2

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nHex:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_42
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    invoke-static {}, Lcom/android/settings/deviceinfo/ImeiInformation;->isMetroPCS()Z

    move-result v4

    if-nez v4, :cond_98

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    :goto_57
    if-nez v4, :cond_1e

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaOpen()Z

    move-result v4

    if-nez v4, :cond_69

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_69
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_1e

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_1e

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_98
    const/4 v4, 0x1

    goto :goto_57
.end method

.method private initPreferenceScreen(I)V
    .registers 4

    const/4 v1, 0x1

    if-le p1, v1, :cond_17

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_19

    const v1, 0x7f15004c

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSecPreferenceValue(I)V

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setNewKey(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    const/4 v1, 0x0

    goto :goto_3

    :cond_19
    return-void
.end method

.method private isCDMAOnlyDevice()Z
    .registers 3

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j3lteusc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public static isMetroPCS()Z
    .registers 3

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string/jumbo v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "mtr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo v1, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x1

    goto :goto_26

    :cond_29
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method private setNewKey(I)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_41

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->updateTitle(Landroid/support/v7/preference/Preference;I)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_41
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1207f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_15
    :goto_15
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void

    :cond_1b
    if-eqz p3, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-interface {v2, v1, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p2, v2

    goto :goto_15
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private updateTitle(Landroid/support/v7/preference/Preference;I)V
    .registers 9

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->isMultiSIM:Z

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1219aa

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3d
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_40
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x29

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/ImeiInformation;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/ImeiInformation;->initPreferenceScreen(I)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    const/4 v7, 0x0

    const v6, 0x7f070071

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_7c
    return-void
.end method

.method setSecPreferenceValue(I)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x2

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const-string/jumbo v6, "ril.simoperator"

    const-string/jumbo v7, "ETC"

    invoke-static {p1, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_de

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v8, :cond_32

    const-string/jumbo v6, "CTC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-static {}, Lcom/android/settings/deviceinfo/ImeiInformation;->isMetroPCS()Z

    move-result v6

    if-nez v6, :cond_32

    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    :cond_32
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string/jumbo v6, "min_number"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    const v7, 0x7f121a68

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_4c
    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    const-string/jumbo v6, "CDMA"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_72

    :cond_66
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_72

    invoke-static {}, Lcom/android/settings/deviceinfo/ImeiInformation;->isMetroPCS()Z

    move-result v6

    if-eqz v6, :cond_150

    :cond_72
    const-string/jumbo v6, "min_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v6, "prl_version"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_7e
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_166

    const-string/jumbo v6, "meid_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_8a
    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    invoke-static {}, Lcom/android/settings/deviceinfo/ImeiInformation;->isMetroPCS()Z

    move-result v6

    if-eqz v6, :cond_a1

    :cond_9b
    const-string/jumbo v6, "meid_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_a1
    const-string/jumbo v6, "imei"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "imei_barcode"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIMEI(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "imei_sv"

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/deviceinfo/ImeiInformation;->isMetroPCS()Z

    move-result v6

    if-nez v6, :cond_d4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v9, :cond_16e

    :cond_d4
    const-string/jumbo v6, "icc_id"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIccId(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    :goto_de
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_f5

    const-string/jumbo v6, "DCM"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/ImeiInformation;->isCDMAOnlyDevice()Z

    move-result v6

    if-eqz v6, :cond_fb

    :cond_f5
    const-string/jumbo v6, "imei_sv"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_fb
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fc

    const-string/jumbo v6, "ril.eri_ver_1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ERI : <unknown>"

    if-eqz v0, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_122

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_122
    const-string/jumbo v6, "eri_version"

    invoke-direct {p0, v6, v5}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_128
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_204

    const-string/jumbo v6, "imei_barcode"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const-string/jumbo v6, "imei"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    if-eqz v1, :cond_14f

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    new-instance v6, Lcom/android/settings/deviceinfo/ImeiInformation$1;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/ImeiInformation$1;-><init>(Lcom/android/settings/deviceinfo/ImeiInformation;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_14f
    :goto_14f
    return-void

    :cond_150
    const-string/jumbo v6, "min_number"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "prl_version"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e

    :cond_166
    const-string/jumbo v6, "meid_number"

    invoke-direct {p0, v6, v2}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8a

    :cond_16e
    const-string/jumbo v6, "VZW"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d4

    const-string/jumbo v6, "TFN"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d4

    const-string/jumbo v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_de

    :cond_18c
    const-string/jumbo v6, "imei"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "imei_barcode"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "imei_sv"

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "prl_version"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaOpen()Z

    move-result v6

    if-nez v6, :cond_1c5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v6

    if-eqz v6, :cond_1ed

    :cond_1c5
    const-string/jumbo v6, "meid_number"

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d0
    const-string/jumbo v6, "min_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v6, "TFN"

    sget-object v7, Lcom/android/settings/deviceinfo/ImeiInformation;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f4

    const-string/jumbo v6, "icc_id"

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/ImeiInformation;->getIccId(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/deviceinfo/ImeiInformation;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_de

    :cond_1ed
    const-string/jumbo v6, "meid_number"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1d0

    :cond_1f4
    const-string/jumbo v6, "icc_id"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_de

    :cond_1fc
    const-string/jumbo v6, "eri_version"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_128

    :cond_204
    const-string/jumbo v6, "imei_barcode"

    invoke-direct {p0, v6}, Lcom/android/settings/deviceinfo/ImeiInformation;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_14f
.end method
