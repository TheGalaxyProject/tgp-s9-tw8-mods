.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/DisplayContent$Screenshoter;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$11;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent$DisplayScreenshoter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->-com_android_server_wm_DisplayContent-mthref-0(Lcom/android/server/wm/DisplayContent$DisplayScreenshoter;Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$11;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final screenshot(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$11;->$m$0(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
