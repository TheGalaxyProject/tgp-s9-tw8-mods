.class Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->sendBsdcDataForSaLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$screenId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$screenId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$eventId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-get0(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-get0(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)J

    move-result-wide v6

    sub-long v2, v4, v6

    :cond_1a
    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string/jumbo v4, "Button"

    iput-object v4, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    :cond_28
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v4, v4, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    invoke-static {v1, v4, v2, v3}, Lcom/android/settings/bluetooth/Utils;->makeBsdcDataForSaLogging(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    const-string/jumbo v4, "Callback"

    iput-object v4, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v1, v8, v9}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->-set0(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;J)J

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$screenId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;->val$eventId:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
