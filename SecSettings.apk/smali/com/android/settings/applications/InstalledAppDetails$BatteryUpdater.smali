.class Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v4, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object v4, v5

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_42

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v6, :cond_43

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iput-object v2, v4, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    :cond_42
    return-object v5

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    return-void
.end method
