.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get8(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v4

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_46

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    instance-of v6, v5, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v6, :cond_37

    move-object v2, v5

    check-cast v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get13(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_3a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    iget-object v7, v2, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_37

    :cond_46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-set0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f1220e5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get10(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_9d

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get14(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get0(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get7(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_9c
    return-void

    :cond_9d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get14(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->-get7(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9c
.end method
