.class Lcom/android/systemui/volume/SecVolumeDialogImpl$7;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .registers 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set29(Z)Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :goto_1b
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get0()Z

    move-result v2

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get40(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap17(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    goto :goto_2b

    :cond_3d
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set29(Z)Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get43(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set30(I)I

    :cond_6e
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCoverStateChanged : isCoverOpen = false, cover is closed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get58()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_1b

    :cond_9a
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get59()Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_a5
    return-void
.end method
