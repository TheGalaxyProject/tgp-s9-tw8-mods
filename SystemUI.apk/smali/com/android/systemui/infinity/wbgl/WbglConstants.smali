.class public Lcom/android/systemui/infinity/wbgl/WbglConstants;
.super Ljava/lang/Object;
.source "WbglConstants.java"


# static fields
.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "wbest.park lib"

    sput-object v0, Lcom/android/systemui/infinity/wbgl/WbglConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
