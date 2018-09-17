.class Lcom/samsung/android/settings/easymode/EasyModeApp$6;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp;->requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$6;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$6;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get8(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$6;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get8(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_11
    return-void
.end method
