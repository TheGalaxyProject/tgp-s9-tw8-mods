.class Lcom/android/settings/TetherSettings$19;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->updateBluetoothSubText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$19;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string/jumbo v2, "TetheringSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectedDevices : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_52

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    const v3, 0x7f1204f3

    invoke-virtual {v2, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_38
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_41
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void

    :cond_48
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    const v3, 0x7f1204f2

    invoke-virtual {v2, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_52
    if-ne v0, v6, :cond_77

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    const v3, 0x7f1204f7

    invoke-virtual {v2, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_63
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_41

    :cond_6d
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    const v3, 0x7f1204f6

    invoke-virtual {v2, v3}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    :cond_77
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1204fa

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8e
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_41

    :cond_98
    iget-object v2, p0, Lcom/android/settings/TetherSettings$19;->this$0:Lcom/android/settings/TetherSettings;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1204f9

    invoke-virtual {v2, v4, v3}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8e
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
