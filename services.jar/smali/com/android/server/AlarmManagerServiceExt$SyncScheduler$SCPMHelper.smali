.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCPMHelper"
.end annotation


# static fields
.field public static final ACTION_UPDATE_SCPM:Ljava/lang/String; = "sec.app.policy.UPDATE.AppsyncPolicy"

.field public static final APPSYNC_POLICY_SCPM_NAME:Ljava/lang/String; = "AppsyncPolicy"


# instance fields
.field private final AUTHORITY_SCPM:Ljava/lang/String;

.field private final AUTHORITY_SCPM_URI:Landroid/net/Uri;

.field private final CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

.field private final CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

.field private final CONTENT_SCPM_URI:Landroid/net/Uri;

.field private final POLICY_CATEGORY:Ljava/lang/String;

.field private final POLICY_ITEMS:[Ljava/lang/String;

.field private final POLICY_ITEM_PRIMARY:Ljava/lang/String;

.field private final POLICY_SCPM_PROJECTION:[Ljava/lang/String;

.field private final POLICY_SCPM_URI:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCtx:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 11

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CAT_SUSP_MILLIS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String;

    const-string/jumbo v0, "CAT_SUSP_PKGS"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String;

    const-string/jumbo v0, "item"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEM_PRIMARY:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "item"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "data3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "data4"

    aput-object v1, v0, v7

    const-string/jumbo v1, "data5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const-string/jumbo v0, "category"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_CATEGORY:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sm.policy"

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM:Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "AppsyncPolicy"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "category"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getSuspiciousPkgFromSCPM()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "CAT_SUSP_PKGS"

    aput-object v0, v4, v12

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "category = ?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_29

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get2()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "AlarmManagerEXT"

    const-string/jumbo v1, "get pkg from DB : No Entry"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-object v5

    :cond_29
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v2, v1

    move v0, v12

    :goto_38
    if-ge v0, v2, :cond_2e

    aget-object v9, v1, v0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_54

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get2()Z

    move-result v3

    if-eqz v3, :cond_51

    const-string/jumbo v3, "AlarmManagerEXT"

    const-string/jumbo v5, "get pkg from DB : There is no Column"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_54
    :try_start_54
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_67

    move-result-object v10

    :goto_58
    if-eqz v10, :cond_51

    const-string/jumbo v3, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :catch_67
    move-exception v8

    const/4 v10, 0x0

    goto :goto_58

    :cond_6a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v11
.end method

.method public getSuspiciousTimeLimitFromSCPM()J
    .registers 15

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v12, -0x1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "CAT_SUSP_MILLIS"

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "category = ?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_2b

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get2()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "AlarmManagerEXT"

    const-string/jumbo v1, "get Time from DB : No Entry"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-wide v12

    :cond_2b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get2()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "AlarmManagerEXT"

    const-string/jumbo v1, "get Time from DB : No Item"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v12

    :cond_44
    const-string/jumbo v0, "item"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_60

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get2()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "AlarmManagerEXT"

    const-string/jumbo v1, "get Time from DB : There is no column"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-wide v12

    :cond_60
    :try_start_60
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_68
    .catchall {:try_start_60 .. :try_end_63} :catchall_6f

    move-result-wide v10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_67
    return-wide v10

    :catch_68
    move-exception v8

    const-wide/16 v10, -0x1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    :catchall_6f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isSCPMAvailable()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method
