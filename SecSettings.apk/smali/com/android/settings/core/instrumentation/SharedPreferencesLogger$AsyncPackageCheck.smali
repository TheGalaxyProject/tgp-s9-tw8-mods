.class Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;
.super Landroid/os/AsyncTask;
.source "SharedPreferencesLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPackageCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method private constructor <init>(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget-object v2, p1, v6

    aget-object v5, p1, v7

    iget-object v6, p0, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v6}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;->-get0(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_11
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_2d

    move-result-object v5

    :cond_1b
    :goto_1b
    const/high16 v6, 0x400000

    :try_start_1d
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v6, p0, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v6, v2, v5}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;->-wrap0(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_25} :catch_26

    :goto_25
    return-object v8

    :catch_26
    move-exception v0

    iget-object v6, p0, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v6, v2, v5, v7}, Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_25

    :catch_2d
    move-exception v1

    goto :goto_1b
.end method
