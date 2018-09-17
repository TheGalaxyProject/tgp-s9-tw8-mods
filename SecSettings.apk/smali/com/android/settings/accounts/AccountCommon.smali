.class public Lcom/android/settings/accounts/AccountCommon;
.super Ljava/lang/Object;
.source "AccountCommon.java"


# static fields
.field private static actionMenuTextColor:I

.field private static deviceThemeStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/accounts/AccountCommon;->deviceThemeStyle:I

    sput v0, Lcom/android/settings/accounts/AccountCommon;->actionMenuTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;
    .registers 2

    invoke-static {p0}, Lcom/android/settingslib/accounts/SnsAccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v0

    return-object v0
.end method
