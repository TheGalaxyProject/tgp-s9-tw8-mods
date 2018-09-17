.class public final Lcom/android/server/EngineeringModeService$EMApplication;
.super Lcom/android/server/EngineeringModeService$EMClient;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EMApplication"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMApplication;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EngineeringModeService$EMClient;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isEmClient(Ljava/lang/String;ILjava/lang/Integer;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/EngineeringModeService$EMApplication;->compareName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p2}, Lcom/android/server/EngineeringModeService$EMApplication;->compareUid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/EngineeringModeService$EMApplication;->checkSignature(Ljava/lang/String;I)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
