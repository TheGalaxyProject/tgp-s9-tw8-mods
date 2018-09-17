.class Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;
.super Landroid/telephony/PhoneStateListener;
.source "FanControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_54

    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    # setter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z
    invoke-static {v0, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    :goto_24
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;
    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    if-nez v0, :cond_44

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IDexFanControl is ull"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void

    :pswitch_37
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    # setter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z
    invoke-static {v0, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    goto :goto_24

    :pswitch_3d
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIsCallMode:Z
    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$202(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    goto :goto_24

    :cond_44
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    # getter for: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->mIDexFanControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;
    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    # invokes: Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->isExistSystemRequest()Z
    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_36

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method
