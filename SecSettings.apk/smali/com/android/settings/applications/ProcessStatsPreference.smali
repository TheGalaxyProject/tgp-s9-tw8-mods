.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Lcom/android/settings/AppProgressPreference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsPackageEntry;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object v0
.end method

.method public init(Lcom/android/settings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .registers 19

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v3, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "ProcessStatsPreference"

    const-string/jumbo v5, "PackageEntry contained no package name or uiLabel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_56

    iget-object v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, p2, v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2d
    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5e

    const/4 v2, 0x1

    :goto_36
    if-eqz p9, :cond_63

    if-eqz v2, :cond_60

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    :goto_3c
    mul-double v0, v4, p5

    :goto_3e
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    double-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v0

    div-double/2addr v4, p3

    double-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setProgress(I)V

    return-void

    :cond_53
    iget-object v3, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    goto :goto_c

    :cond_56
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2d

    :cond_5e
    const/4 v2, 0x0

    goto :goto_36

    :cond_60
    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto :goto_3c

    :cond_63
    if-eqz v2, :cond_6f

    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    :goto_67
    long-to-double v4, v4

    mul-double v4, v4, p7

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double v0, v4, v6

    goto :goto_3e

    :cond_6f
    iget-wide v4, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    goto :goto_67
.end method
