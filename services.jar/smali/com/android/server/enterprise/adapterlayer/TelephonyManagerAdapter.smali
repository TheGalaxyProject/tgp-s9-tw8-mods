.class public Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyManagerAdapter"

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

.field private static mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    .registers 2

    const-class v1, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthDbm(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    return v0
.end method

.method public getSignalStrengthLevelAsu(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v0

    return v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method
