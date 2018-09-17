.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field final synthetic val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_video_enhancer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pbm_video_enhancer"

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_28

    :goto_24
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    move v0, v1

    goto :goto_24

    :cond_2a
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "pbm_uhq_upscaler"

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    if-eqz p2, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getUhqUpscalerLatestLevel(Landroid/content/Context;)I

    move-result v1

    :cond_56
    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_27

    :cond_5a
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_game_launcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pbm_game_launcher"

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_80

    :goto_7c
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_27

    :cond_80
    move v0, v1

    goto :goto_7c

    :cond_82
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_game_tools"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pbm_game_tools"

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v4

    if-eqz p2, :cond_a8

    :goto_a4
    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_27

    :cond_a8
    move v0, v1

    goto :goto_a4
.end method
