.class Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;
.super Ljava/lang/Object;
.source "SettingsGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "SettingsGridViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[c] onTouch()+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetTranslateAnimationEnd()Z

    move-result v1

    if-nez v1, :cond_39

    const-string/jumbo v1, "SettingsGridViewAdapter"

    const-string/jumbo v2, "[c] onTouch - GetTranslateAnimationEnd()!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_4e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_74

    :cond_4e
    :goto_4e
    const-string/jumbo v1, "SettingsGridViewAdapter"

    const-string/jumbo v2, "[c] onTouch() long limited!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_120

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-set0(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_73
    :pswitch_73
    return v6

    :cond_74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_4e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_60

    goto :goto_4e

    :pswitch_8a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetIsWidgetVisible()Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get3()Z

    move-result v1

    if-eqz v1, :cond_9d

    :cond_9c
    return v6

    :cond_9d
    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-set0(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SetOnTouchActionDown(Landroid/view/MotionEvent;)V

    goto :goto_73

    :pswitch_c8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-set0(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemClick(Landroid/view/View;ILcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    :goto_111
    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-set0(Z)Z

    goto/16 :goto_73

    :cond_116
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SetOnTouchActionUp(Landroid/view/MotionEvent;)Z

    goto :goto_111

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_c8
        :pswitch_73
    .end packed-switch
.end method
