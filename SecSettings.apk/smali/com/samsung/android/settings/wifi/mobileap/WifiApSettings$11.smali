.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$11;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
