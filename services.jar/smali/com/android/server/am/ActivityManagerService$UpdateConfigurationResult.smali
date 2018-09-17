.class final Lcom/android/server/am/ActivityManagerService$UpdateConfigurationResult;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateConfigurationResult"
.end annotation


# instance fields
.field activityRelaunched:Z

.field changes:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$UpdateConfigurationResult;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$UpdateConfigurationResult;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UpdateConfigurationResult;->changes:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    return-void
.end method
