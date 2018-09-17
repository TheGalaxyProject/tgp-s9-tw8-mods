.class public Lcom/android/settingslib/inputmethod/InputMethodPreference;
.super Lcom/android/settingslib/SecRestrictedSwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isImeEnabler()Z
    .registers 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v5, "preference_software_update_badge"

    const-string/jumbo v6, "layout"

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1e} :catch_2d

    move-result v1

    :goto_1f
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v5

    if-eq v5, v1, :cond_2c

    const/4 v4, 0x1

    :cond_2c
    return v4

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method private isTv()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private setCheckedInternal(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V

    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .registers 5

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_11
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/android/settingslib/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg;-><init>(Ljava/lang/Object;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$1;-><init>(Ljava/lang/Object;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .registers 7

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$string;->ime_security_warning:I

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$2;

    invoke-direct {v3, p0}, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$2;-><init>(Ljava/lang/Object;)V

    const v4, 0x104000a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$3;

    invoke-direct {v3, p0}, Lcom/android/settingslib/inputmethod/-$Lambda$5-GltunS96jWNuePTiWuzHe8Nvg$3;-><init>(Ljava/lang/Object;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settingslib_inputmethod_InputMethodPreference_11265(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_14
.end method

.method synthetic lambda$-com_android_settingslib_inputmethod_InputMethodPreference_11798(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_settingslib_inputmethod_InputMethodPreference_12660(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_settingslib_inputmethod_InputMethodPreference_12781(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setCheckedInternal(Z)V

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isTv()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_2e

    :cond_39
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->showSecurityWarnDialog()V

    goto :goto_2e
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 11

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_8

    return v8

    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_c
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return v8

    :catch_16
    move-exception v1

    sget-object v4, Lcom/android/settingslib/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v4, Lcom/android/settingslib/R$string;->failed_to_open_app_settings_toast:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method
