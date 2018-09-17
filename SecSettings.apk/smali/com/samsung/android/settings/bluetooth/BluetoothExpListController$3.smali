.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .registers 10

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getChild(II)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v1

    if-eqz v1, :cond_1e

    move-object v0, v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onItemClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    :cond_1e
    const/4 v2, 0x1

    return v2
.end method
