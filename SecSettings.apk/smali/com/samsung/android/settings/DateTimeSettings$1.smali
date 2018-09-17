.class Lcom/samsung/android/settings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DateTimeSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/DateTimeSettings$1;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings$1;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/DateTimeSettings$1;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_d
    return-void
.end method
