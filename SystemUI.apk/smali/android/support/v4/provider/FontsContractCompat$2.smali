.class final Landroid/support/v4/provider/FontsContractCompat$2;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Typeface;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$request:Landroid/support/v4/provider/FontRequest;

    invoke-static {v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->-wrap0(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->-get2()Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$2;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/provider/FontsContractCompat$2;->call()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
