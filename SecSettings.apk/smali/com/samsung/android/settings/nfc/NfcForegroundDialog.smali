.class public Lcom/samsung/android/settings/nfc/NfcForegroundDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "NfcForegroundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x28

    const/16 v3, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_20
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_3a

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NfcForegroundDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->finish()V

    return-void

    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    goto :goto_21

    :pswitch_2c
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NfcForegroundDialog"

    const-string/jumbo v1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :pswitch_data_3a
    .packed-switch -0x2
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    const-string/jumbo v1, ""

    new-instance v6, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v3, :cond_19

    iget-boolean v6, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v6, :cond_19

    move-object v2, v3

    iget-object v6, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v6, 0x7f120601

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v6, 0x7f120608

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->setFinishOnTouchOutside(Z)V

    if-eqz v2, :cond_6e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    const v7, 0x7f1212c6

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_62
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->dismiss()V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    const v6, 0x7f1212c7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_62

    :cond_78
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->setupAlert()V

    sget-boolean v6, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz v6, :cond_6d

    const-string/jumbo v6, "NfcForegroundDialog"

    const-string/jumbo v7, "setupAlert()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string/jumbo v0, "NfcForegroundDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
