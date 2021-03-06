.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mCheckBoxText:Landroid/widget/TextView;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPermissionGranted:Z

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/UsbPermissionActivity;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    const-string/jumbo v0, "UsbPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "device"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbDevice;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const-string/jumbo v7, "accessory"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v7, "android.intent.extra.UID"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    const-string/jumbo v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_42
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_48} :catch_f2

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_100

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const v8, 0x7f120b02

    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v7, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    :goto_75
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v7, 0x1040000

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string/jumbo v7, "UsbPermissionActivity"

    const-string/jumbo v8, "onCreate use sec_always_use_checkbox"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d018a

    invoke-virtual {v4, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f0a0041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f0a00d6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mCheckBoxText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v7, :cond_118

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mCheckBoxText:Landroid/widget/TextView;

    const v8, 0x7f120120

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_cb
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mCheckBoxText:Landroid/widget/TextView;

    new-instance v8, Lcom/android/systemui/usb/UsbPermissionActivity$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/usb/UsbPermissionActivity$1;-><init>(Lcom/android/systemui/usb/UsbPermissionActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f0a00dd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->setupAlert()V

    return-void

    :catch_f2
    move-exception v3

    const-string/jumbo v7, "UsbPermissionActivity"

    const-string/jumbo v8, "unable to look up package name"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbPermissionActivity;->finish()V

    return-void

    :cond_100
    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const v8, 0x7f120b0c

    invoke-virtual {p0, v8, v7}, Lcom/android/systemui/usb/UsbPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v7, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto/16 :goto_75

    :cond_118
    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mCheckBoxText:Landroid/widget/TextView;

    const v8, 0x7f120121

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_cb
.end method

.method public onDestroy()V
    .registers 9

    const-string/jumbo v6, "usb"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :try_start_10
    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v6, :cond_3c

    const-string/jumbo v6, "device"

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v6, :cond_3c

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v4, v6, v7}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3c

    iget v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    :cond_3c
    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v6, :cond_68

    const-string/jumbo v6, "accessory"

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    if-eqz v6, :cond_68

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-interface {v4, v6, v7}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_68

    iget v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v5}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    :cond_68
    const-string/jumbo v6, "permission"

    iget-boolean v7, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_7a

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_7a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_10 .. :try_end_7a} :catch_92
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_7a} :catch_87

    :cond_7a
    :goto_7a
    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v6, :cond_83

    iget-object v6, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v6}, Lcom/android/systemui/usb/UsbPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_83
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void

    :catch_87
    move-exception v2

    const-string/jumbo v6, "UsbPermissionActivity"

    const-string/jumbo v7, "IUsbService connection failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    :catch_92
    move-exception v1

    const-string/jumbo v6, "UsbPermissionActivity"

    const-string/jumbo v7, "PendingIntent was cancelled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method
