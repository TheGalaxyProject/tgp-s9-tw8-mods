.class Lcom/android/settings/HomeSettings$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HomeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/HomeSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/settings/HomeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HomeSettings;Lcom/android/settings/HomeSettings$HomePackageReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/HomeSettings$HomePackageReceiver;-><init>(Lcom/android/settings/HomeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/HomeSettings$HomePackageReceiver;->this$0:Lcom/android/settings/HomeSettings;

    invoke-static {v0}, Lcom/android/settings/HomeSettings;->-wrap0(Lcom/android/settings/HomeSettings;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search2/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/search2/SearchFeatureProvider;->getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method
