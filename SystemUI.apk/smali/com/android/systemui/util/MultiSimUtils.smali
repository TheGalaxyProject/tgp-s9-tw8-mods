.class public Lcom/android/systemui/util/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static sPINPUKLaunchMode:I

.field private static final sSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/util/MultiSimUtils;->sSlotCount:I

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/util/MultiSimUtils;->sPINPUKLaunchMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_c
    const-string/jumbo v0, "ABSENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_18
    const-string/jumbo v0, "PIN_REQUIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_24
    const-string/jumbo v0, "PUK_REQUIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_30
    const-string/jumbo v0, "NETWORK_LOCKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_3c
    const-string/jumbo v0, "READY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_48
    const-string/jumbo v0, "NOT_READY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_54
    const-string/jumbo v0, "PERM_DISABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_60
    const-string/jumbo v0, "CARD_IO_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_6c
    const-string/jumbo v0, "PERSO_LOCKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_78
    const-string/jumbo v0, "NETWORK_SUBSET_LOCKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_84
    const-string/jumbo v0, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_90
    const-string/jumbo v0, "DETECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    :cond_9c
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private static getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz p1, :cond_1f

    array-length v3, v2

    if-ge p1, v3, :cond_1f

    aget-object v3, v2, p1

    if-eqz v3, :cond_1f

    aget-object v1, v2, p1

    :cond_1f
    if-nez v1, :cond_22

    :goto_21
    return-object p2

    :cond_22
    move-object p2, v1

    goto :goto_21
.end method

.method public static getSystemPropertySimState(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 7

    invoke-static {p0, p2}, Lcom/android/systemui/util/MultiSimUtils;->isReadySimSlot(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v1

    :cond_9
    const-string/jumbo v1, "NOT_READY"

    invoke-static {p1, p2, v1}, Lcom/android/systemui/util/MultiSimUtils;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSystemPropertySimState() simStateProp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimUtils;->convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    return-object v1
.end method

.method public static isReadySimSlot(Landroid/content/Context;I)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isReadySimSlot() slotNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getMultiSIMDeviceSIM1On()I

    move-result v2

    if-ne v2, v0, :cond_29

    :goto_28
    return v0

    :cond_29
    move v0, v1

    goto :goto_28

    :cond_2b
    if-ne p1, v0, :cond_3a

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getMultiSIMDeviceSIM2On()I

    move-result v2

    if-ne v2, v0, :cond_38

    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37

    :cond_3a
    return v1
.end method

.method public static isSimStateReadyorNotReady()Z
    .registers 9

    const/4 v8, 0x1

    sget v1, Lcom/android/systemui/util/MultiSimUtils;->sSlotCount:I

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_1c

    array-length v5, v4

    if-gt v5, v0, :cond_1e

    :cond_1c
    const/4 v5, 0x0

    return v5

    :cond_1e
    aget-object v2, v4, v0

    const-string/jumbo v5, "MultiSimUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSimStateReadyorNotReady() : simSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "READY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    return v8

    :cond_4f
    const-string/jumbo v5, "NOT_READY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    return v8

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method
