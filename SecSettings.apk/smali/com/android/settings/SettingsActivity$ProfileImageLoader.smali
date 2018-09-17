.class Lcom/android/settings/SettingsActivity$ProfileImageLoader;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileImageLoader"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProfileLoader:Lcom/samsung/android/settings/utils/ProfileLoader;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SettingsActivity$ProfileImageLoader;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/SettingsActivity$ProfileImageLoader;)Lcom/samsung/android/settings/utils/ProfileLoader;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->mProfileLoader:Lcom/samsung/android/settings/utils/ProfileLoader;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsActivity$ProfileImageLoader;Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->loadProfileImage(Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/utils/ProfileLoader;->getInstance()Lcom/samsung/android/settings/utils/ProfileLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->mProfileLoader:Lcom/samsung/android/settings/utils/ProfileLoader;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsActivity$ProfileImageLoader;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private loadProfileImage(Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsActivity$AvatarLoaderListener",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;-><init>(Lcom/android/settings/SettingsActivity$ProfileImageLoader;Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
