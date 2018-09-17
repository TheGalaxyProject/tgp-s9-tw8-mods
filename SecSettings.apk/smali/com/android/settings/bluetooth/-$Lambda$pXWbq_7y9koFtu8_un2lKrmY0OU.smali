.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->lambda$-com_android_settings_bluetooth_BluetoothPairingDialogFragment_12028(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/-$Lambda$pXWbq_7y9koFtu8_un2lKrmY0OU;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
