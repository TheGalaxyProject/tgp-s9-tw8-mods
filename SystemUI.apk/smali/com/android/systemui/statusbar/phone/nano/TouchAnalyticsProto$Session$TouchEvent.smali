.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;


# instance fields
.field private actionIndex_:I

.field private action_:I

.field private bitField0_:I

.field public pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedRedacted_:Z

.field private timeOffsetNanos_:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v3, 0x1

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_12
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_20
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-lez v3, :cond_4c

    const/4 v1, 0x0

    :goto_38
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-ge v1, v3, :cond_4c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v3, v1

    if-eqz v0, :cond_49

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_4c
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_66
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_9c

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_ba

    goto :goto_1

    :pswitch_25
    iput v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_1

    :sswitch_3b
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v5, :cond_68

    const/4 v1, 0x0

    :goto_46
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v1, :cond_51

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51
    :goto_51
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6c

    new-instance v5, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_68
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v1, v5

    goto :goto_46

    :cond_6c
    new-instance v5, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    goto :goto_1

    :sswitch_7b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto/16 :goto_1

    :sswitch_89
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-nez v5, :cond_94

    new-instance v5, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    :cond_94
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_1

    nop

    :sswitch_data_9c
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_1d
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x28 -> :sswitch_7b
        0x32 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setActionIndex(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .registers 4

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_24

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-lez v2, :cond_40

    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-ge v1, v2, :cond_40

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_3d

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_40
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_56
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
