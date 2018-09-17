.class Lcom/caverock/androidsvg/SVGImageView$LoadURITask;
.super Landroid/os/AsyncTask;
.source "SVGImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadURITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVGImageView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;-><init>(Lcom/caverock/androidsvg/SVGImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Landroid/graphics/Picture;
    .registers 9

    const/4 v5, 0x0

    :try_start_1
    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;
    :try_end_a
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_a} :catch_12
    .catchall {:try_start_1 .. :try_end_a} :catchall_3b

    move-result-object v1

    const/4 v5, 0x0

    :try_start_c
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_45

    :goto_11
    return-object v1

    :catch_12
    move-exception v3

    :try_start_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parse error loading URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SVGImageView"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_3b

    const/4 v5, 0x0

    :try_start_32
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_39

    :goto_37
    const/4 v5, 0x0

    return-object v5

    :catch_39
    move-exception v0

    goto :goto_37

    :catchall_3b
    move-exception v2

    const/4 v5, 0x0

    :try_start_3d
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    :goto_42
    throw v2

    :catch_43
    move-exception v5

    goto :goto_42

    :catch_45
    move-exception v5

    goto :goto_11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->doInBackground([Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Picture;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    # invokes: Lcom/caverock/androidsvg/SVGImageView;->setSoftwareLayerType()V
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGImageView;->access$300(Lcom/caverock/androidsvg/SVGImageView;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    new-instance v1, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Picture;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->onPostExecute(Landroid/graphics/Picture;)V

    return-void
.end method
