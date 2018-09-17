.class Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;
.super Ljava/util/TimerTask;
.source "DexFanHoldingTimerTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

.field private mSender:Ljava/lang/String;

.field private mSetUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    return-void
.end method

.method private destroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    if-nez v0, :cond_8

    :cond_5
    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v0, p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->onFinishedFanHoldingTimerTask(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;)V

    goto :goto_5
.end method


# virtual methods
.method public cancel()Z
    .registers 4

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DexFanHoldingTimerTask - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->destroy()V

    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 4

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DexFanHoldingTimerTask - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->destroy()V

    return-void
.end method

.method public setUpdate(Z)V
    .registers 5

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpdate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanHoldingTimerTask;->mSetUpdate:Z

    return-void
.end method
