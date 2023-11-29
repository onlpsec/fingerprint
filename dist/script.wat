(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32 i32 i32 i32) (result i32)))
  (type $t3 (func (param i32 i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i64) (result i32)))
  (type $t6 (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type $t7 (func (param i32 i32 i32)))
  (type $t8 (func (param i32 i64 i32)))
  (type $t9 (func (result i32)))
  (type $t10 (func (param i32 i32) (result i32)))
  (type $t11 (func (param i32 i64)))
  (type $t12 (func (param i64)))
  (type $t13 (func (param i32 i64 i32 i32 i32)))
  (type $t14 (func (param i32 i32 i32 i32)))
  (type $t15 (func (param i64 i32 i32) (result i64)))
  (type $t16 (func (param i64 i32 i32 i32)))
  (type $t17 (func (param i32 i32) (result i64)))
  (type $t18 (func (param i64 i32 i32 i64)))
  (type $t19 (func (param i64 i32) (result i64)))
  (type $t20 (func (param i32 i32 i32 i32 i32)))
  (type $t21 (func (param i64 i32 i32 i32 i32 i32)))
  (type $t22 (func (param i32 f64)))
  (type $t23 (func (param i64 i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $runtime.fd_write (type $t2)))
  (import "gojs" "syscall/js.valueGet" (func $syscall/js.valueGet (type $t15)))
  (import "gojs" "syscall/js.valuePrepareString" (func $syscall/js.valuePrepareString (type $t11)))
  (import "gojs" "syscall/js.valueLoadString" (func $syscall/js.valueLoadString (type $t16)))
  (import "gojs" "syscall/js.finalizeRef" (func $syscall/js.finalizeRef (type $t12)))
  (import "gojs" "syscall/js.stringVal" (func $syscall/js.stringVal (type $t17)))
  (import "gojs" "syscall/js.valueSet" (func $syscall/js.valueSet (type $t18)))
  (import "gojs" "syscall/js.valueNew" (func $syscall/js.valueNew (type $t13)))
  (import "gojs" "syscall/js.valueLength" (func $syscall/js.valueLength (type $t5)))
  (import "gojs" "syscall/js.valueIndex" (func $syscall/js.valueIndex (type $t19)))
  (import "gojs" "syscall/js.valueCall" (func $syscall/js.valueCall (type $t6)))
  (func $_*internal/task.Queue_.Push (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l1
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (global.get $g1))
          (then
            (if $I3
              (local.tee $l2
                (i32.load
                  (i32.const 68268)))
              (then
                (i32.store
                  (local.get $l2)
                  (local.get $p0))))
            (i32.store
              (i32.const 68268)
              (local.get $p0))
            (if $I4
              (local.get $p0)
              (then
                (i32.store
                  (local.get $p0)
                  (i32.const 0))
                (if $I5
                  (i32.eqz
                    (i32.load
                      (i32.const 68264)))
                  (then
                    (i32.store
                      (i32.const 68264)
                      (local.get $p0))))
                (return)))))
        (if $I6
          (i32.eqz
            (select
              (local.get $l1)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.nilPanic)
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.nilPanic (type $t0)
    (call $byn$mgfn-shared$runtime.nilPanic
      (i32.const 23)
      (i32.const 66122)))
  (func $runtime.runtimePanic (type $t0)
    (call $byn$mgfn-shared$runtime.nilPanic
      (i32.const 14)
      (i32.const 65552)))
  (func $internal/task.start (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 20)))
        (local.set $p0
          (i32.load
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=4
            (local.get $l1)))
        (local.set $l4
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l6
          (i32.load offset=16
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=8
            (local.get $l1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l5
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l2
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i64.store
              (local.tee $l6
                (i32.add
                  (local.get $l2)
                  (i32.const 24)))
              (i64.const 0))
            (i64.store offset=16
              (local.get $l2)
              (i64.const 0))
            (i32.store offset=12
              (local.get $l2)
              (i32.const 4))
            (local.set $l4
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l1
                (i32.add
                  (local.get $l2)
                  (i32.const 8))))
            (i32.store offset=8
              (local.get $l2)
              (local.get $l4))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l5)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.alloc
              (i32.const 48))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l1)))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=20
              (local.get $l1)
              (local.get $p0))
            (i32.store
              (local.tee $p0
                (i32.add
                  (local.get $l1)
                  (i32.const 24)))
              (i32.const 0))
            (i32.store offset=16
              (local.get $l2)
              (local.get $l1))))
        (if $I6
          (select
            (i32.eq
              (local.get $l5)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 32768))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p0)))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (local.get $l6)
              (local.get $p0))
            (i32.store
              (i32.add
                (local.get $l1)
                (i32.const 28))
              (local.get $p0))
            (i32.store
              (local.get $p0)
              (i32.const -1204030091))
            (i32.store
              (i32.add
                (local.get $l1)
                (i32.const 32))
              (i32.add
                (local.get $p0)
                (i32.const 32768)))
            (i32.store offset=28
              (local.get $l2)
              (local.get $p0))
            (i32.store offset=20
              (local.get $l2)
              (local.get $p0))))
        (if $I8
          (select
            (i32.eq
              (local.get $l5)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_*internal/task.Queue_.Push
              (local.get $l1))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I9
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l4))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l2)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $l2))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l1))
    (i32.store offset=12
      (local.get $l3)
      (local.get $l4))
    (i32.store offset=16
      (local.get $l3)
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 20))))
  (func $runtime.alloc (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 28)))
        (local.set $p0
          (i32.load
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=4
            (local.get $l1)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l5
          (i32.load offset=16
            (local.get $l1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $l1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=8
            (local.get $l1)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l8
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (if $I4
              (i32.eqz
                (local.get $p0))
              (then
                (return
                  (i32.const 68312))))
            (i64.store
              (i32.const 68288)
              (i64.add
                (i64.load
                  (i32.const 68288))
                (i64.extend_i32_u
                  (local.get $p0))))
            (i64.store
              (i32.const 68296)
              (i64.add
                (i64.load
                  (i32.const 68296))
                (i64.const 1)))
            (local.set $l7
              (i32.shr_u
                (i32.add
                  (local.get $p0)
                  (i32.const 15))
                (i32.const 4)))
            (local.set $l5
              (local.tee $l3
                (i32.load
                  (i32.const 68276))))
            (local.set $l6
              (i32.const 0))
            (local.set $l1
              (i32.const 0))))
        (loop $L5
          (local.set $l2
            (select
              (local.get $l2)
              (i32.eq
                (local.get $l3)
                (local.get $l5))
              (global.get $g1)))
          (block $B6
            (block $B7
              (block $B8
                (block $B9
                  (if $I10
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (if $I11
                        (i32.eqz
                          (local.get $l2))
                        (then
                          (local.set $l2
                            (local.get $l1))
                          (br $B9)))
                      (local.set $l3
                        (i32.and
                          (local.get $l1)
                          (i32.const 255)))
                      (local.set $l2
                        (i32.const 1))))
                  (block $B12
                    (if $I13
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (block $B14
                          (br_table $B9 $B14 $B12
                            (local.get $l3)))
                        (drop
                          (i32.load
                            (i32.const 68316)))
                        (local.set $l1
                          (i32.load
                            (i32.const 68132)))))
                    (block $B15
                      (if $I16
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B15
                            (local.get $l1))
                          (local.set $l1
                            (global.get $__stack_pointer))))
                      (if $I17
                        (i32.eqz
                          (select
                            (local.get $l8)
                            (i32.const 0)
                            (global.get $g1)))
                        (then
                          (call $runtime.markRoots
                            (local.get $l1)
                            (i32.const 65536))
                          (drop
                            (br_if $B1
                              (i32.const 0)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1)))))))
                    (if $I18
                      (select
                        (i32.eq
                          (local.get $l8)
                          (i32.const 1))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime.markRoots
                          (i32.const 65536)
                          (i32.const 68864))
                        (drop
                          (br_if $B1
                            (i32.const 1)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))))
                    (loop $L19
                      (if $I20
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (if $I21
                            (i32.eqz
                              (i32.load8_u
                                (i32.const 68313)))
                            (then
                              (local.set $l1
                                (i32.const 0))
                              (local.set $l3
                                (i32.const 0))
                              (local.set $l2
                                (i32.const 0))
                              (loop $L22
                                (block $B23
                                  (block $B24
                                    (if $I25
                                      (i32.lt_u
                                        (local.get $l2)
                                        (i32.load
                                          (i32.const 68280)))
                                      (then
                                        (block $B26
                                          (block $B27
                                            (block $B28
                                              (block $B29
                                                (br_table $B29 $B28 $B27 $B26
                                                  (i32.sub
                                                    (i32.and
                                                      (call $_runtime.gcBlock_.state
                                                        (local.get $l2))
                                                      (i32.const 255))
                                                    (i32.const 1))))
                                              (call $_runtime.gcBlock_.markFree
                                                (local.get $l2))
                                              (i64.store
                                                (i32.const 68304)
                                                (i64.add
                                                  (i64.load
                                                    (i32.const 68304))
                                                  (i64.const 1)))
                                              (br $B24))
                                            (i32.and
                                              (local.get $l3)
                                              (i32.const 1))
                                            (local.set $l3
                                              (i32.const 0))
                                            (br_if $B23
                                              (i32.eqz))
                                            (call $_runtime.gcBlock_.markFree
                                              (local.get $l2))
                                            (br $B24))
                                          (local.set $l3
                                            (i32.const 0))
                                          (local.set $l4
                                            (i32.and
                                              (i32.load8_u
                                                (local.tee $l9
                                                  (i32.add
                                                    (i32.load
                                                      (i32.const 68272))
                                                    (i32.shr_u
                                                      (local.get $l2)
                                                      (i32.const 2)))))
                                              (i32.xor
                                                (i32.shl
                                                  (i32.const 2)
                                                  (i32.and
                                                    (i32.shl
                                                      (local.get $l2)
                                                      (i32.const 1))
                                                    (i32.const 6)))
                                                (i32.const -1))))
                                          (i32.store8
                                            (local.get $l9)
                                            (local.get $l4))
                                          (br $B23))
                                        (local.set $l1
                                          (i32.add
                                            (local.get $l1)
                                            (i32.const 16)))
                                        (br $B23)))
                                    (local.set $l2
                                      (i32.const 2))
                                    (br_if $B9
                                      (i32.le_u
                                        (i32.div_u
                                          (i32.sub
                                            (i32.load
                                              (i32.const 68272))
                                            (i32.const 68864))
                                          (i32.const 3))
                                        (local.get $l1)))
                                    (drop
                                      (call $runtime.growHeap))
                                    (br $B9))
                                  (local.set $l1
                                    (i32.add
                                      (local.get $l1)
                                      (i32.const 16)))
                                  (local.set $l3
                                    (i32.const 1)))
                                (local.set $l2
                                  (i32.add
                                    (local.get $l2)
                                    (i32.const 1)))
                                (br $L22))
                              (unreachable)))
                          (local.set $l2
                            (i32.const 0))
                          (i32.store8
                            (i32.const 68313)
                            (i32.const 0))
                          (local.set $l1
                            (i32.load
                              (i32.const 68280)))))
                      (loop $L30
                        (if $I31
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $L19
                              (local.tee $l3
                                (i32.le_u
                                  (local.get $l1)
                                  (local.get $l2))))
                            (local.set $l3
                              (i32.ne
                                (i32.and
                                  (call $_runtime.gcBlock_.state
                                    (local.get $l2))
                                  (i32.const 255))
                                (i32.const 3)))))
                        (if $I32
                          (select
                            (global.get $g1)
                            (i32.const 1)
                            (local.get $l3))
                          (then
                            (if $I33
                              (select
                                (i32.eq
                                  (local.get $l8)
                                  (i32.const 2))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.startMark
                                  (local.get $l2))
                                (drop
                                  (br_if $B1
                                    (i32.const 2)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (local.set $l1
                              (if $I34 (result i32)
                                (global.get $g1)
                                (then
                                  (local.get $l1))
                                (else
                                  (i32.load
                                    (i32.const 68280)))))))
                        (if $I35
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (local.set $l2
                              (i32.add
                                (local.get $l2)
                                (i32.const 1)))
                            (br $L30))))))
                  (if $I36
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (local.set $l2
                        (local.get $l1))
                      (br_if $B8
                        (i32.eqz
                          (i32.and
                            (call $runtime.growHeap)
                            (i32.const 1)))))))
                (if $I37
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (if $I38
                      (i32.eq
                        (i32.load
                          (i32.const 68280))
                        (local.get $l5))
                      (then
                        (local.set $l5
                          (i32.const 0))
                        (br $B7)))
                    (if $I39
                      (i32.and
                        (call $_runtime.gcBlock_.state
                          (local.get $l5))
                        (i32.const 255))
                      (then
                        (local.set $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const 1)))
                        (br $B7)))
                    (local.set $l1
                      (i32.add
                        (local.get $l5)
                        (i32.const 1)))
                    (if $I40
                      (i32.ne
                        (local.tee $l6
                          (i32.add
                            (local.get $l6)
                            (i32.const 1)))
                        (local.get $l7))
                      (then
                        (local.set $l5
                          (local.get $l1))
                        (br $B6)))
                    (i32.store
                      (i32.const 68276)
                      (local.get $l1))
                    (call $_runtime.gcBlock_.setState
                      (local.tee $l1
                        (i32.sub
                          (local.get $l1)
                          (local.get $l7)))
                      (i32.const 1))
                    (local.set $l2
                      (i32.add
                        (i32.sub
                          (local.get $l5)
                          (local.get $l7))
                        (i32.const 2)))
                    (loop $L41
                      (if $I42
                        (i32.ne
                          (local.get $l2)
                          (i32.load
                            (i32.const 68276)))
                        (then
                          (call $_runtime.gcBlock_.setState
                            (local.get $l2)
                            (i32.const 2))
                          (local.set $l2
                            (i32.add
                              (local.get $l2)
                              (i32.const 1)))
                          (br $L41))))
                    (memory.fill
                      (local.tee $l1
                        (i32.add
                          (i32.shl
                            (local.get $l1)
                            (i32.const 4))
                          (i32.const 68864)))
                      (i32.const 0)
                      (local.get $p0))
                    (return
                      (local.get $l1)))))
              (if $I43
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 3))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.runtimePanicAt
                    (i32.const 66080)
                    (i32.const 13))
                  (drop
                    (br_if $B1
                      (i32.const 3)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I44
                (i32.eqz
                  (global.get $g1))
                (then
                  (unreachable))))
            (local.set $l6
              (select
                (local.get $l6)
                (i32.const 0)
                (global.get $g1))))
          (if $I45
            (i32.eqz
              (global.get $g1))
            (then
              (local.set $l3
                (i32.load
                  (i32.const 68276)))
              (local.set $l1
                (local.get $l2))
              (br $L5))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $l2))
    (i32.store offset=8
      (local.get $l4)
      (local.get $l1))
    (i32.store offset=12
      (local.get $l4)
      (local.get $l3))
    (i32.store offset=16
      (local.get $l4)
      (local.get $l5))
    (i32.store offset=20
      (local.get $l4)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l4)
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 28)))
    (i32.const 0))
  (func $internal/task.Pause (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 4)))
        (local.set $l0
          (i32.load
            (i32.load
              (global.get $g2))))))
    (local.set $l1
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l1
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l2
              (i32.eqz
                (local.tee $l0
                  (i32.load
                    (i32.const 68132)))))))
        (block $B4
          (block $B5
            (block $B6
              (if $I7
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B6
                    (local.get $l2))
                  (br_if $B5
                    (i32.ne
                      (i32.load
                        (i32.load
                          (local.tee $l0
                            (i32.add
                              (local.get $l0)
                              (i32.const 28)))))
                      (i32.const -1204030091)))))
              (if $I8
                (i32.eqz
                  (select
                    (local.get $l1)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (if $I9
                    (i32.load8_u
                      (i32.const 68128))
                    (then
                      (call $asyncify_stop_unwind)
                      (i32.store8
                        (i32.const 68128)
                        (i32.const 0)))
                    (else
                      (i32.store offset=4
                        (local.get $l0)
                        (global.get $__stack_pointer))
                      (call $asyncify_start_unwind
                        (local.get $l0))))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I10
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B4
                    (local.tee $l0
                      (i32.load
                        (i32.const 68132)))))))
            (if $I11
              (select
                (i32.eq
                  (local.get $l1)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.nilPanic)
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I12
              (i32.eqz
                (global.get $g1))
              (then
                (unreachable))))
          (if $I13
            (select
              (i32.eq
                (local.get $l1)
                (i32.const 2))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.runtimePanic)
              (drop
                (br_if $B1
                  (i32.const 2)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I14
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I15
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.load
                (i32.add
                  (local.get $l0)
                  (i32.const 28)))
              (i32.const -1204030091))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $internal/itoa.Uitoa (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 32)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $l3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l5
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l9
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l3
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i32.store offset=28
              (local.get $l3)
              (i32.const 0))
            (i32.store offset=20
              (local.get $l3)
              (i32.const 2))
            (local.set $l7
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l5
                (i32.add
                  (local.get $l3)
                  (i32.const 16))))
            (i32.store offset=16
              (local.get $l3)
              (local.get $l7))
            (local.set $l2
              (i32.const 0))))
        (block $B4
          (if $I5
            (i32.eqz
              (i32.or
                (global.get $g1)
                (local.get $p1)))
            (then
              (local.set $p1
                (i32.const 1))
              (local.set $l2
                (i32.const 65567))
              (br $B4)))
          (if $I6
            (i32.eqz
              (select
                (local.get $l9)
                (i32.const 0)
                (global.get $g1)))
            (then
              (call $runtime.alloc
                (i32.const 20))
              (drop
                (br_if $B1
                  (i32.const 0)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))
              (local.set $l6)))
          (if $I7
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6))
              (local.set $l8
                (i32.add
                  (local.get $l6)
                  (i32.const 19)))))
          (block $B8
            (if $I9
              (i32.eqz
                (global.get $g1))
              (then
                (loop $L10
                  (block $B11
                    (local.set $l5
                      (i32.add
                        (local.get $l2)
                        (i32.const 19)))
                    (br_if $B11
                      (i32.lt_u
                        (local.get $p1)
                        (i32.const 10)))
                    (br_if $B8
                      (i32.gt_u
                        (local.get $l5)
                        (i32.const 19)))
                    (i32.store8
                      (i32.add
                        (local.get $l2)
                        (local.get $l8))
                      (i32.add
                        (i32.add
                          (local.get $p1)
                          (i32.mul
                            (local.tee $p1
                              (i32.div_u
                                (local.get $p1)
                                (i32.const 10)))
                            (i32.const 246)))
                        (i32.const 48)))
                    (local.set $l2
                      (i32.sub
                        (local.get $l2)
                        (i32.const 1)))
                    (br $L10)))
                (br_if $B8
                  (i32.gt_u
                    (local.get $l5)
                    (i32.const 19)))
                (i32.store8
                  (local.tee $l5
                    (i32.add
                      (i32.add
                        (local.get $l2)
                        (local.get $l6))
                      (i32.const 19)))
                  (i32.add
                    (local.get $p1)
                    (i32.const 48)))
                (local.set $l2
                  (i32.sub
                    (i32.const 1)
                    (local.get $l2)))
                (local.set $p1
                  (i32.add
                    (local.get $l3)
                    (i32.const 8)))))
            (if $I12
              (select
                (i32.eq
                  (local.get $l9)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.stringFromBytes
                  (local.get $p1)
                  (local.get $l5)
                  (local.get $l2))
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I13
              (i32.eqz
                (global.get $g1))
              (then
                (local.set $p1
                  (i32.load offset=12
                    (local.get $l3)))
                (local.set $l2
                  (i32.load offset=8
                    (local.get $l3)))
                (br $B4))))
          (if $I14
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 2))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.lookupPanic)
              (drop
                (br_if $B1
                  (i32.const 2)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I15
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I16
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l7))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p1))
            (i32.store
              (local.get $p0)
              (local.get $l2))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l3)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l4)
      (local.get $l2))
    (i32.store offset=12
      (local.get $l4)
      (local.get $l3))
    (i32.store offset=16
      (local.get $l4)
      (local.get $l5))
    (i32.store offset=20
      (local.get $l4)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l4)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l4)
      (local.get $l8))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 32))))
  (func $runtime.stringFromBytes (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 24)))
        (local.set $p0
          (i32.load
            (local.tee $l4
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l4)))
        (local.set $p2
          (i32.load offset=8
            (local.get $l4)))
        (local.set $l5
          (i32.load offset=12
            (local.get $l4)))
        (local.set $l6
          (i32.load offset=16
            (local.get $l4)))
        (local.set $l4
          (i32.load offset=20
            (local.get $l4)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l3
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l5
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i64.store offset=20 align=4
              (local.get $l5)
              (i64.const 0))
            (i64.store offset=12 align=4
              (local.get $l5)
              (i64.const 3))
            (local.set $l4
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l6
                (i32.add
                  (local.get $l5)
                  (i32.const 8))))
            (i32.store offset=8
              (local.get $l5)
              (local.get $l4))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l3)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.alloc
              (local.get $p2))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l6)))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (memory.copy
              (local.get $l6)
              (local.get $p1)
              (local.get $p2))
            (i32.store
              (i32.const 68316)
              (local.get $l4))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p2))
            (i32.store
              (local.get $p0)
              (local.get $l6))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l5)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l3)
      (local.get $l5))
    (i32.store offset=16
      (local.get $l3)
      (local.get $l6))
    (i32.store offset=20
      (local.get $l3)
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 24))))
  (func $runtime.lookupPanic (type $t0)
    (call $byn$mgfn-shared$runtime.nilPanic
      (i32.const 18)
      (i32.const 66175)))
  (func $_reflect.Kind_.String (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 24)))
        (local.set $p0
          (i32.load
            (local.tee $l5
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l5)))
        (local.set $l2
          (i32.load offset=8
            (local.get $l5)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l5)))
        (local.set $l4
          (i32.load offset=16
            (local.get $l5)))
        (local.set $l5
          (i32.load offset=20
            (local.get $l5)))))
    (local.set $l6
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l7
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.add
                  (global.get $__stack_pointer)
                  (i32.const -64))))
            (i64.store
              (i32.add
                (local.get $l4)
                (i32.const 56))
              (i64.const 0))
            (i64.store offset=48
              (local.get $l4)
              (i64.const 0))
            (i32.store offset=44
              (local.get $l4)
              (i32.const 4))
            (local.set $l5
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l4)
                (i32.const 40)))
            (i32.store offset=40
              (local.get $l4)
              (local.get $l5))
            (local.set $l3
              (i32.const 7))
            (local.set $l2
              (i32.const 65700))
            (local.set $l6
              (i32.and
                (local.get $p1)
                (i32.const 255)))))
        (block $B4
          (if $I5
            (i32.eqz
              (global.get $g1))
            (then
              (block $B6
                (block $B7
                  (block $B8
                    (block $B9
                      (block $B10
                        (block $B11
                          (block $B12
                            (block $B13
                              (block $B14
                                (block $B15
                                  (block $B16
                                    (block $B17
                                      (block $B18
                                        (block $B19
                                          (block $B20
                                            (block $B21
                                              (block $B22
                                                (block $B23
                                                  (block $B24
                                                    (block $B25
                                                      (block $B26
                                                        (block $B27
                                                          (block $B28
                                                            (block $B29
                                                              (block $B30
                                                                (block $B31
                                                                  (block $B32
                                                                    (br_table $B4 $B32 $B31 $B30 $B29 $B28 $B27 $B26 $B25 $B24 $B23 $B22 $B21 $B20 $B19 $B18 $B17 $B16 $B15 $B14 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6
                                                                      (local.get $l6)))
                                                                  (local.set $l2
                                                                    (i32.const 65707))
                                                                  (local.set $l3
                                                                    (i32.const 4))
                                                                  (br $B4))
                                                                (local.set $l3
                                                                  (i32.const 3))
                                                                (local.set $l2
                                                                  (i32.const 65711))
                                                                (br $B4))
                                                              (local.set $l2
                                                                (i32.const 65714))
                                                              (local.set $l3
                                                                (i32.const 4))
                                                              (br $B4))
                                                            (local.set $l3
                                                              (i32.const 5))
                                                            (local.set $l2
                                                              (i32.const 65718))
                                                            (br $B4))
                                                          (local.set $l3
                                                            (i32.const 5))
                                                          (local.set $l2
                                                            (i32.const 65723))
                                                          (br $B4))
                                                        (local.set $l3
                                                          (i32.const 5))
                                                        (local.set $l2
                                                          (i32.const 65728))
                                                        (br $B4))
                                                      (local.set $l2
                                                        (i32.const 65733))
                                                      (local.set $l3
                                                        (i32.const 4))
                                                      (br $B4))
                                                    (local.set $l3
                                                      (i32.const 5))
                                                    (local.set $l2
                                                      (i32.const 65737))
                                                    (br $B4))
                                                  (local.set $l3
                                                    (i32.const 6))
                                                  (local.set $l2
                                                    (i32.const 65742))
                                                  (br $B4))
                                                (local.set $l3
                                                  (i32.const 6))
                                                (local.set $l2
                                                  (i32.const 65748))
                                                (br $B4))
                                              (local.set $l3
                                                (i32.const 6))
                                              (local.set $l2
                                                (i32.const 65754))
                                              (br $B4))
                                            (local.set $l2
                                              (i32.const 65760))
                                            (br $B4))
                                          (local.set $l2
                                            (i32.const 65767))
                                          (br $B4))
                                        (local.set $l2
                                          (i32.const 65774))
                                        (br $B4))
                                      (local.set $l3
                                        (i32.const 9))
                                      (local.set $l2
                                        (i32.const 65781))
                                      (br $B4))
                                    (local.set $l3
                                      (i32.const 10))
                                    (local.set $l2
                                      (i32.const 65790))
                                    (br $B4))
                                  (local.set $l3
                                    (i32.const 6))
                                  (local.set $l2
                                    (i32.const 66818))
                                  (br $B4))
                                (local.set $l3
                                  (i32.const 14))
                                (local.set $l2
                                  (i32.const 65800))
                                (br $B4))
                              (local.set $l2
                                (i32.const 65814))
                              (local.set $l3
                                (i32.const 4))
                              (br $B4))
                            (local.set $l3
                              (i32.const 9))
                            (local.set $l2
                              (i32.const 65818))
                            (br $B4))
                          (local.set $l3
                            (i32.const 3))
                          (local.set $l2
                            (i32.const 65827))
                          (br $B4))
                        (local.set $l3
                          (i32.const 5))
                        (local.set $l2
                          (i32.const 65830))
                        (br $B4))
                      (local.set $l3
                        (i32.const 5))
                      (local.set $l2
                        (i32.const 65835))
                      (br $B4))
                    (local.set $l2
                      (i32.const 65840))
                    (local.set $l3
                      (i32.const 4))
                    (br $B4))
                  (local.set $l3
                    (i32.const 3))
                  (local.set $l2
                    (i32.const 65844))
                  (br $B4))
                (local.set $l3
                  (i32.const 6))
                (local.set $l2
                  (i32.const 65847))
                (br $B4))
              (local.set $p1
                (i32.ge_s
                  (local.tee $l2
                    (i32.extend8_s
                      (local.get $p1)))
                  (i32.const 0)))))
          (local.set $l2
            (block $B33 (result i32)
              (block $B34
                (if $I35
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (br_if $B34
                      (local.get $p1))
                    (local.set $l2
                      (i32.sub
                        (i32.const 0)
                        (local.get $l2)))
                    (local.set $p1
                      (i32.add
                        (local.get $l4)
                        (i32.const 24)))))
                (if $I36
                  (i32.eqz
                    (select
                      (local.get $l7)
                      (i32.const 0)
                      (global.get $g1)))
                  (then
                    (call $internal/itoa.Uitoa
                      (local.get $p1)
                      (local.get $l2))
                    (drop
                      (br_if $B1
                        (i32.const 0)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I37
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=48
                      (local.get $l4)
                      (local.tee $l2
                        (i32.load offset=24
                          (local.get $l4))))
                    (local.set $l3
                      (i32.load offset=28
                        (local.get $l4)))
                    (local.set $p1
                      (i32.add
                        (local.get $l4)
                        (i32.const 16)))))
                (if $I38
                  (select
                    (i32.eq
                      (local.get $l7)
                      (i32.const 1))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.stringConcat
                      (local.get $p1)
                      (i32.const 65566)
                      (i32.const 1)
                      (local.get $l2)
                      (local.get $l3))
                    (drop
                      (br_if $B1
                        (i32.const 1)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I39
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (local.set $l3
                      (i32.load offset=20
                        (local.get $l4)))
                    (br $B33
                      (i32.load offset=16
                        (local.get $l4))))))
              (local.set $p1
                (select
                  (local.get $p1)
                  (i32.add
                    (local.get $l4)
                    (i32.const 32))
                  (global.get $g1)))
              (if $I40
                (select
                  (i32.eq
                    (local.get $l7)
                    (i32.const 2))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $internal/itoa.Uitoa
                    (local.get $p1)
                    (local.get $l2))
                  (drop
                    (br_if $B1
                      (i32.const 2)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I41 (result i32)
                (global.get $g1)
                (then
                  (local.get $l2))
                (else
                  (local.set $l3
                    (i32.load offset=36
                      (local.get $l4)))
                  (i32.load offset=32
                    (local.get $l4))))))
          (if $I42
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store offset=52
                (local.get $l4)
                (local.get $l2))
              (i32.store offset=56
                (local.get $l4)
                (local.get $l2))
              (local.set $p1
                (i32.add
                  (local.get $l4)
                  (i32.const 8)))))
          (if $I43
            (select
              (i32.eq
                (local.get $l7)
                (i32.const 3))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.stringConcat
                (local.get $p1)
                (i32.const 65853)
                (i32.const 4)
                (local.get $l2)
                (local.get $l3))
              (drop
                (br_if $B1
                  (i32.const 3)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I44
            (i32.eqz
              (global.get $g1))
            (then
              (local.set $l2
                (i32.load offset=8
                  (local.get $l4)))
              (local.set $l3
                (i32.load offset=12
                  (local.get $l4))))))
        (if $I45
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l5))
            (i32.store offset=4
              (local.get $p0)
              (local.get $l3))
            (i32.store
              (local.get $p0)
              (local.get $l2))
            (global.set $__stack_pointer
              (i32.sub
                (local.get $l4)
                (i32.const -64)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l6
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l6)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l6)
      (local.get $l2))
    (i32.store offset=12
      (local.get $l6)
      (local.get $l3))
    (i32.store offset=16
      (local.get $l6)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l6)
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 24))))
  (func $runtime.stringConcat (type $t20) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 36)))
        (local.set $p0
          (i32.load
            (local.tee $l6
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l6)))
        (local.set $p2
          (i32.load offset=8
            (local.get $l6)))
        (local.set $p3
          (i32.load offset=12
            (local.get $l6)))
        (local.set $p4
          (i32.load offset=16
            (local.get $l6)))
        (local.set $l7
          (i32.load offset=20
            (local.get $l6)))
        (local.set $l8
          (i32.load offset=24
            (local.get $l6)))
        (local.set $l9
          (i32.load offset=28
            (local.get $l6)))
        (local.set $l6
          (i32.load offset=32
            (local.get $l6)))))
    (local.set $l5
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l5
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l8
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i64.store offset=20 align=4
              (local.get $l8)
              (i64.const 0))
            (i64.store offset=12 align=4
              (local.get $l8)
              (i64.const 3))
            (local.set $l6
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l7
                (i32.add
                  (local.get $l8)
                  (i32.const 8))))
            (i32.store offset=8
              (local.get $l8)
              (local.get $l6))))
        (block $B4
          (if $I5
            (i32.eqz
              (global.get $g1))
            (then
              (if $I6
                (i32.eqz
                  (local.get $p2))
                (then
                  (local.set $l7
                    (local.get $p3))
                  (local.set $l9
                    (local.get $p4))
                  (br $B4)))
              (if $I7
                (i32.eqz
                  (local.get $p4))
                (then
                  (local.set $l7
                    (local.get $p1))
                  (local.set $l9
                    (local.get $p2))
                  (br $B4)))
              (local.set $l9
                (i32.add
                  (local.get $p2)
                  (local.get $p4)))))
          (if $I8
            (i32.eqz
              (select
                (local.get $l5)
                (i32.const 0)
                (global.get $g1)))
            (then
              (call $runtime.alloc
                (local.get $l9))
              (drop
                (br_if $B1
                  (i32.const 0)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))
              (local.set $l7)))
          (if $I9
            (i32.eqz
              (global.get $g1))
            (then
              (memory.copy
                (local.get $l7)
                (local.get $p1)
                (local.get $p2))
              (memory.copy
                (i32.add
                  (local.get $p2)
                  (local.get $l7))
                (local.get $p3)
                (local.get $p4)))))
        (if $I10
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l6))
            (i32.store offset=4
              (local.get $p0)
              (local.get $l9))
            (i32.store
              (local.get $p0)
              (local.get $l7))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l8)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l5
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l5)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $p4))
    (i32.store offset=20
      (local.get $l5)
      (local.get $l7))
    (i32.store offset=24
      (local.get $l5)
      (local.get $l8))
    (i32.store offset=28
      (local.get $l5)
      (local.get $l9))
    (i32.store offset=32
      (local.get $l5)
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 36))))
  (func $runtime.memequal (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32)
    (local.set $p3
      (i32.const 0))
    (i32.ge_u
      (block $B0 (result i32)
        (loop $L1
          (drop
            (br_if $B0
              (local.get $p2)
              (i32.eq
                (local.get $p2)
                (local.get $p3))))
          (local.set $l4
            (i32.add
              (local.get $p1)
              (local.get $p3)))
          (i32.add
            (local.get $p0)
            (local.get $p3))
          (local.set $p3
            (i32.add
              (local.get $p3)
              (i32.const 1)))
          (br_if $L1
            (i32.eq
              (i32.load8_u)
              (i32.load8_u
                (local.get $l4)))))
        (i32.sub
          (local.get $p3)
          (i32.const 1)))
      (local.get $p2)))
  (func $runtime.hash32 (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local.set $p2
      (i32.mul
        (local.get $p2)
        (i32.const -2128831035)))
    (loop $L0
      (if $I1
        (local.get $p1)
        (then
          (local.set $p1
            (i32.sub
              (local.get $p1)
              (i32.const 1)))
          (local.set $p2
            (i32.mul
              (i32.xor
                (local.get $p2)
                (i32.load8_u
                  (local.get $p0)))
              (i32.const 16777619)))
          (local.set $p0
            (i32.add
              (local.get $p0)
              (i32.const 1)))
          (br $L0))))
    (local.get $p2))
  (func $malloc (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 16)))
        (local.set $p0
          (i32.load
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=4
            (local.get $l1)))
        (local.set $l4
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=8
            (local.get $l1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l5
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l2
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i32.store offset=20
              (local.get $l2)
              (i32.const 2))
            (local.set $l4
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l2)
                (i32.const 16)))
            (i32.store offset=16
              (local.get $l2)
              (local.get $l4))
            (local.set $l3
              (i32.eqz
                (local.get $p0)))
            (local.set $l1
              (i32.const 0))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l3))
                (br_if $B4
                  (local.tee $l1
                    (i32.lt_s
                      (local.get $p0)
                      (i32.const 0))))))
            (if $I7
              (i32.eqz
                (select
                  (local.get $l5)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (call $runtime.alloc
                  (local.get $p0))
                (drop
                  (br_if $B1
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l1)))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=24
                  (local.get $l2)
                  (local.get $l1))
                (i32.store offset=28
                  (local.get $l2)
                  (local.get $l1))
                (i32.store offset=8
                  (local.get $l2)
                  (local.get $p0))
                (i32.store offset=4
                  (local.get $l2)
                  (local.get $p0))
                (i32.store
                  (local.get $l2)
                  (local.get $l1))
                (i32.store offset=12
                  (local.get $l2)
                  (local.get $l1))
                (local.set $p0
                  (i32.add
                    (local.get $l2)
                    (i32.const 12)))))
            (if $I9
              (select
                (i32.eq
                  (local.get $l5)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.hashmapBinarySet
                  (i32.const 68040)
                  (local.get $p0)
                  (local.get $l2))
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1)))))))
          (if $I10
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store
                (i32.const 68316)
                (local.get $l4))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l2)
                  (i32.const 32)))
              (return
                (local.get $l1)))))
        (if $I11
          (select
            (i32.eq
              (local.get $l5)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.slicePanic)
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I12
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $l2))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l1))
    (i32.store offset=12
      (local.get $l3)
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 16)))
    (i32.const 0))
  (func $runtime.hashmapBinarySet (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 16)))
        (local.set $p0
          (i32.load
            (local.tee $l3
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l3)))
        (local.set $p2
          (i32.load offset=8
            (local.get $l3)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l3)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (select
            (global.get $g1)
            (i32.const 1)
            (local.get $p0))
          (then
            (if $I4
              (i32.eqz
                (select
                  (local.get $l4)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (call $runtime.nilMapPanic)
                (drop
                  (br_if $B1
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I5
              (i32.eqz
                (global.get $g1))
              (then
                (unreachable)))))
        (if $I6
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l3
              (call $runtime.hash32
                (local.get $p1)
                (i32.load offset=12
                  (local.get $p0))
                (i32.load offset=4
                  (local.get $p0))
                (local.get $p0)))))
        (if $I7
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.hashmapSet
              (local.get $p0)
              (local.get $p1)
              (local.get $p2)
              (local.get $l3))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l4)
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 16))))
  (func $runtime.slicePanic (type $t0)
    (call $byn$mgfn-shared$runtime.nilPanic
      (i32.const 18)
      (i32.const 66193)))
  (func $free (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 12)))
        (local.set $p0
          (i32.load
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=8
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=4
            (local.get $l1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l2
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 16))))
            (local.set $l1
              (i32.eqz
                (local.get $p0)))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l1))
                (i32.store offset=12
                  (local.get $l2)
                  (local.get $p0))
                (local.set $l1
                  (i32.add
                    (local.get $l2)
                    (i32.const 12)))))
            (if $I7
              (i32.eqz
                (select
                  (local.get $l4)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (call $runtime.hashmapBinaryGet
                  (i32.const 68040)
                  (local.get $l1)
                  (local.get $l2)
                  (i32.const 12))
                (drop
                  (br_if $B1
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l1)))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B4
                  (i32.eqz
                    (i32.and
                      (local.get $l1)
                      (i32.const 1))))
                (i32.store
                  (local.get $l2)
                  (local.get $p0))))
            (if $I9
              (select
                (i32.eq
                  (local.get $l4)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.hashmapBinaryDelete
                  (local.get $l2))
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1)))))))
          (if $I10
            (i32.eqz
              (global.get $g1))
            (then
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l2)
                  (i32.const 16)))
              (return))))
        (if $I11
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67000)
              (i32.const 66040))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I12
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $l1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 12))))
  (func $runtime.hashmapBinaryGet (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 16)))
        (local.set $p0
          (i32.load
            (local.tee $p3
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $p3)))
        (local.set $p2
          (i32.load offset=8
            (local.get $p3)))
        (local.set $p3
          (i32.load offset=12
            (local.get $p3)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (if $I4
              (i32.eqz
                (local.get $p0))
              (then
                (memory.fill
                  (local.get $p2)
                  (i32.const 0)
                  (local.get $p3))
                (return
                  (i32.const 0))))
            (local.set $p3
              (call $runtime.hash32
                (local.get $p1)
                (i32.load offset=12
                  (local.get $p0))
                (i32.load offset=4
                  (local.get $p0))
                (local.get $p0)))))
        (if $I5
          (i32.eqz
            (select
              (local.get $l4)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.hashmapGet
              (local.get $p0)
              (local.get $p1)
              (local.get $p2)
              (local.get $p3))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p0)))
        (if $I6
          (i32.eqz
            (global.get $g1))
          (then
            (return
              (local.get $p0))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 16)))
    (i32.const 0))
  (func $runtime.hashmapBinaryDelete (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 44)))
        (local.set $p0
          (i32.load
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l3
          (i32.load offset=4
            (local.get $l1)))
        (local.set $l5
          (i32.load offset=8
            (local.get $l1)))
        (local.set $l4
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $l1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $l1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $l1)))
        (local.set $l9
          (i32.load offset=32
            (local.get $l1)))
        (local.set $l10
          (i32.load offset=36
            (local.get $l1)))
        (local.set $l11
          (i32.load offset=40
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=16
            (local.get $l1)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l12
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l3
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i64.store
              (i32.add
                (local.get $l3)
                (i32.const 24))
              (i64.const 0))
            (i64.store offset=16
              (local.get $l3)
              (i64.const 0))
            (i32.store offset=4
              (local.get $l3)
              (i32.const 6))
            (local.set $l7
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.get $l3))
            (i32.store
              (local.get $l3)
              (local.get $l7))
            (local.set $l8
              (select
                (local.tee $l2
                  (i32.shr_u
                    (local.tee $l4
                      (call $runtime.hash32
                        (local.get $p0)
                        (i32.load
                          (i32.const 68052))
                        (local.tee $l6
                          (i32.load
                            (i32.const 68044)))
                        (local.get $l4)))
                    (i32.const 24)))
                (i32.const 1)
                (local.get $l2)))
            (local.set $l5
              (call $runtime.hashmapBucketAddrForHash
                (i32.const 68040)
                (local.get $l4)))))
        (block $B4
          (loop $L5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=8
                  (local.get $l3)
                  (local.get $l5))
                (i32.store offset=12
                  (local.get $l3)
                  (local.get $l5))
                (br_if $B4
                  (i32.eqz
                    (local.get $l5)))
                (local.set $l4
                  (i32.const 0))))
            (block $B7
              (loop $L8
                (block $B9
                  (if $I10
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (br_if $B9
                        (local.tee $l6
                          (i32.eq
                            (local.get $l4)
                            (i32.const 8))))
                      (i32.store offset=16
                        (local.get $l3)
                        (local.tee $l6
                          (i32.add
                            (i32.add
                              (i32.mul
                                (local.tee $l9
                                  (i32.load
                                    (i32.const 68052)))
                                (local.get $l4))
                              (local.get $l5))
                            (i32.const 12))))
                      (local.set $l1
                        (i32.ne
                          (local.get $l8)
                          (i32.load8_u
                            (local.tee $l10
                              (i32.add
                                (local.get $l4)
                                (local.get $l5))))))))
                  (block $B11
                    (if $I12
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (br_if $B11
                          (local.get $l1))
                        (i32.store offset=20
                          (local.get $l3)
                          (local.tee $l11
                            (i32.load
                              (i32.const 68064))))
                        (i32.store offset=24
                          (local.get $l3)
                          (local.tee $l1
                            (i32.load
                              (i32.const 68068))))
                        (br_if $B7
                          (i32.eqz
                            (local.get $l1)))))
                    (if $I13
                      (i32.eqz
                        (select
                          (local.get $l12)
                          (i32.const 0)
                          (global.get $g1)))
                      (then
                        (call_indirect $T0 (type $t2)
                          (local.get $p0)
                          (local.get $l6)
                          (local.get $l9)
                          (local.get $l11)
                          (local.get $l1))
                        (drop
                          (br_if $B1
                            (i32.const 0)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))
                        (local.set $l1)))
                    (if $I14
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (br_if $B11
                          (local.tee $l1
                            (i32.eqz
                              (i32.and
                                (local.get $l1)
                                (i32.const 1)))))
                        (i32.store8
                          (local.get $l10)
                          (i32.const 0))
                        (memory.fill
                          (local.get $l6)
                          (i32.const 0)
                          (i32.load
                            (i32.const 68052)))
                        (memory.fill
                          (i32.add
                            (i32.add
                              (local.get $l5)
                              (i32.add
                                (i32.mul
                                  (local.get $l4)
                                  (local.tee $p0
                                    (i32.load
                                      (i32.const 68056))))
                                (i32.shl
                                  (i32.load
                                    (i32.const 68052))
                                  (i32.const 3))))
                            (i32.const 12))
                          (i32.const 0)
                          (local.get $p0))
                        (i32.store
                          (i32.const 68048)
                          (i32.sub
                            (i32.load
                              (i32.const 68048))
                            (i32.const 1)))
                        (br $B4))))
                  (if $I15
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (local.set $l4
                        (i32.add
                          (local.get $l4)
                          (i32.const 1)))
                      (br $L8)))))
              (if $I16
                (i32.eqz
                  (global.get $g1))
                (then
                  (local.set $l5
                    (i32.load offset=8
                      (local.get $l5)))
                  (br $L5)))))
          (if $I17
            (select
              (i32.eq
                (local.get $l12)
                (i32.const 1))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.nilPanic)
              (drop
                (br_if $B1
                  (i32.const 1)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I18
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I19
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l7))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l3)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l2)
      (local.get $l3))
    (i32.store offset=8
      (local.get $l2)
      (local.get $l5))
    (i32.store offset=12
      (local.get $l2)
      (local.get $l4))
    (i32.store offset=16
      (local.get $l2)
      (local.get $l1))
    (i32.store offset=20
      (local.get $l2)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l2)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l2)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l2)
      (local.get $l9))
    (i32.store offset=36
      (local.get $l2)
      (local.get $l10))
    (i32.store offset=40
      (local.get $l2)
      (local.get $l11))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 44))))
  (func $runtime._panic (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 f64) (local $l21 f64) (local $l22 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 8)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l19
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (select
              (local.get $l19)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.printstring
              (i32.const 66093)
              (i32.const 7))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I4
          (select
            (i32.eq
              (local.get $l19)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (local.set $l2
              (local.get $p0))
            (local.set $l5
              (local.get $p1))
            (if $I5
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 88)))
                (local.set $l2
                  (i32.load
                    (local.tee $l7
                      (i32.load
                        (global.get $g2)))))
                (local.set $l5
                  (i32.load offset=4
                    (local.get $l7)))
                (local.set $l3
                  (i32.load offset=8
                    (local.get $l7)))
                (local.set $l4
                  (i32.load offset=12
                    (local.get $l7)))
                (local.set $l20
                  (f64.load offset=16 align=4
                    (local.get $l7)))
                (local.set $l22
                  (i64.load offset=24 align=4
                    (local.get $l7)))
                (local.set $l8
                  (i32.load offset=32
                    (local.get $l7)))
                (local.set $l21
                  (f64.load offset=36 align=4
                    (local.get $l7)))
                (local.set $l9
                  (i32.load offset=44
                    (local.get $l7)))
                (local.set $l10
                  (i32.load offset=48
                    (local.get $l7)))
                (local.set $l11
                  (i32.load offset=52
                    (local.get $l7)))
                (local.set $l12
                  (i32.load offset=56
                    (local.get $l7)))
                (local.set $l13
                  (i32.load offset=60
                    (local.get $l7)))
                (local.set $l14
                  (i32.load offset=64
                    (local.get $l7)))
                (local.set $l15
                  (i32.load offset=68
                    (local.get $l7)))
                (local.set $l16
                  (i32.load offset=72
                    (local.get $l7)))
                (local.set $l17
                  (i32.load offset=76
                    (local.get $l7)))
                (local.set $l18
                  (i32.load offset=80
                    (local.get $l7)))
                (local.set $l7
                  (i32.load offset=84
                    (local.get $l7)))))
            (block $B6
              (local.set $l6
                (block $B7 (result i32)
                  (if $I8
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l6
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I9
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l3
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 368))))
                      (i32.store offset=244
                        (local.get $l3)
                        (i32.const 29))
                      (memory.fill
                        (i32.add
                          (local.get $l3)
                          (i32.const 248))
                        (i32.const 0)
                        (i32.const 116))
                      (i32.store offset=240
                        (local.get $l3)
                        (local.tee $l12
                          (i32.load
                            (i32.const 68316))))
                      (i32.store
                        (i32.const 68316)
                        (i32.add
                          (local.get $l3)
                          (i32.const 240)))
                      (local.set $l4
                        (i32.ne
                          (local.get $l2)
                          (i32.const 66944)))))
                  (block $B10
                    (block $B11
                      (if $I12
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B11
                            (local.get $l4))
                          (local.set $l2
                            (i32.eqz
                              (i32.and
                                (local.get $l5)
                                (i32.const 1))))))
                      (if $I13
                        (select
                          (global.get $g1)
                          (i32.const 1)
                          (local.get $l2))
                        (then
                          (if $I14
                            (i32.eqz
                              (select
                                (local.get $l6)
                                (i32.const 0)
                                (global.get $g1)))
                            (then
                              (call $runtime.printstring
                                (i32.const 66225)
                                (i32.const 4))
                              (drop
                                (br_if $B7
                                  (i32.const 0)
                                  (i32.eq
                                    (global.get $g1)
                                    (i32.const 1))))))
                          (br_if $B10
                            (i32.eqz
                              (global.get $g1)))))
                      (if $I15
                        (select
                          (i32.eq
                            (local.get $l6)
                            (i32.const 1))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call $runtime.printstring
                            (i32.const 66229)
                            (i32.const 5))
                          (drop
                            (br_if $B7
                              (i32.const 1)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (br_if $B10
                        (i32.eqz
                          (global.get $g1))))
                    (local.set $l4
                      (select
                        (local.get $l4)
                        (i32.ne
                          (local.get $l2)
                          (i32.const 66900))
                        (global.get $g1)))
                    (block $B16
                      (block $B17
                        (if $I18
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $B17
                              (local.get $l4))
                            (br_if $B16
                              (local.tee $l2
                                (i32.ge_s
                                  (local.get $l5)
                                  (i32.const 0))))))
                        (if $I19
                          (select
                            (i32.eq
                              (local.get $l6)
                              (i32.const 2))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.putchar
                              (i32.const 45))
                            (drop
                              (br_if $B7
                                (i32.const 2)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (if $I20
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (local.set $l5
                              (i32.sub
                                (i32.const 0)
                                (local.get $l5)))
                            (br $B16))))
                      (local.set $l4
                        (select
                          (local.get $l4)
                          (i32.ne
                            (local.get $l2)
                            (i32.const 65568))
                          (global.get $g1)))
                      (block $B21
                        (if $I22
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $B21
                              (local.get $l4))
                            (local.set $l2
                              (i32.and
                                (local.get $l5)
                                (i32.const 255)))))
                        (if $I23
                          (select
                            (i32.eq
                              (local.get $l6)
                              (i32.const 3))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.printuint32
                              (local.get $l2))
                            (drop
                              (br_if $B7
                                (i32.const 3)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (br_if $B10
                          (i32.eqz
                            (global.get $g1))))
                      (if $I24
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B16
                            (i32.eq
                              (local.get $l2)
                              (i32.const 67708)))
                          (local.set $l4
                            (i32.ne
                              (local.get $l2)
                              (i32.const 67684)))))
                      (block $B25
                        (if $I26
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $B25
                              (local.get $l4))
                            (local.set $l22
                              (i64.load
                                (local.get $l5)))))
                        (if $I27
                          (select
                            (i32.eq
                              (local.get $l6)
                              (i32.const 4))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.printuint64
                              (local.get $l22))
                            (drop
                              (br_if $B7
                                (i32.const 4)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (br_if $B10
                          (i32.eqz
                            (global.get $g1))))
                      (local.set $l4
                        (select
                          (local.get $l4)
                          (i32.ne
                            (local.get $l2)
                            (i32.const 66928))
                          (global.get $g1)))
                      (block $B28
                        (block $B29
                          (if $I30
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (br_if $B29
                                (local.get $l4))
                              (local.set $l2
                                (f64.eq
                                  (local.tee $l20
                                    (f64.load
                                      (local.get $l5)))
                                  (local.get $l20)))))
                          (if $I31
                            (select
                              (global.get $g1)
                              (i32.const 1)
                              (local.get $l2))
                            (then
                              (if $I32
                                (select
                                  (i32.eq
                                    (local.get $l6)
                                    (i32.const 5))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.printstring
                                    (i32.const 66211)
                                    (i32.const 3))
                                  (drop
                                    (br_if $B7
                                      (i32.const 5)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (br_if $B10
                                (i32.eqz
                                  (global.get $g1)))))
                          (if $I33
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (local.set $l21
                                (f64.add
                                  (local.get $l20)
                                  (local.get $l20)))
                              (local.set $l2
                                (i32.eqz
                                  (f64.gt
                                    (local.get $l20)
                                    (f64.const 0x0p+0 (;=0;)))))))
                          (block $B34
                            (if $I35
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (br_if $B34
                                  (local.get $l2))
                                (br_if $B34
                                  (local.tee $l2
                                    (f64.ne
                                      (local.get $l20)
                                      (local.get $l21))))))
                            (if $I36
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 6))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.printstring
                                  (i32.const 66214)
                                  (i32.const 4))
                                (drop
                                  (br_if $B7
                                    (i32.const 6)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (br_if $B10
                              (i32.eqz
                                (global.get $g1))))
                          (local.set $l2
                            (select
                              (local.get $l2)
                              (i32.eqz
                                (f64.lt
                                  (local.get $l20)
                                  (f64.const 0x0p+0 (;=0;))))
                              (global.get $g1)))
                          (block $B37
                            (if $I38
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (br_if $B37
                                  (local.get $l2))
                                (br_if $B37
                                  (local.tee $l2
                                    (f64.ne
                                      (local.get $l20)
                                      (local.get $l21))))))
                            (if $I39
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 7))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.printstring
                                  (i32.const 66218)
                                  (i32.const 4))
                                (drop
                                  (br_if $B7
                                    (i32.const 7)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (br_if $B10
                              (i32.eqz
                                (global.get $g1))))
                          (if $I40
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (i64.store offset=214 align=2
                                (local.get $l3)
                                (i64.const 0))
                              (i64.store offset=208
                                (local.get $l3)
                                (i64.const 0))
                              (if $I41
                                (f64.eq
                                  (local.get $l20)
                                  (f64.const 0x0p+0 (;=0;)))
                                (then
                                  (local.set $l4
                                    (i32.const 0))
                                  (local.set $l10
                                    (i32.const 43))
                                  (br_if $B28
                                    (local.tee $l2
                                      (i32.eqz
                                        (f64.lt
                                          (f64.div
                                            (f64.const 0x1p+0 (;=1;))
                                            (local.get $l20))
                                          (f64.const 0x0p+0 (;=0;))))))
                                  (local.set $l10
                                    (i32.const 45))
                                  (br $B28)))
                              (local.set $l21
                                (select
                                  (f64.neg
                                    (local.get $l20))
                                  (local.get $l20)
                                  (f64.lt
                                    (local.get $l20)
                                    (f64.const 0x0p+0 (;=0;)))))
                              (local.set $l4
                                (i32.const 1))
                              (loop $L42
                                (if $I43
                                  (f64.ge
                                    (local.get $l21)
                                    (f64.const 0x1.4p+3 (;=10;)))
                                  (then
                                    (local.set $l4
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 1)))
                                    (local.set $l21
                                      (f64.div
                                        (local.get $l21)
                                        (f64.const 0x1.4p+3 (;=10;))))
                                    (br $L42))
                                  (else
                                    (loop $L44
                                      (if $I45
                                        (f64.lt
                                          (local.get $l21)
                                          (f64.const 0x1p+0 (;=1;)))
                                        (then
                                          (local.set $l4
                                            (i32.sub
                                              (local.get $l4)
                                              (i32.const 1)))
                                          (local.set $l21
                                            (f64.mul
                                              (local.get $l21)
                                              (f64.const 0x1.4p+3 (;=10;))))
                                          (br $L44))))
                                    (local.set $l10
                                      (select
                                        (i32.const 45)
                                        (i32.const 43)
                                        (f64.lt
                                          (local.get $l20)
                                          (f64.const 0x0p+0 (;=0;)))))
                                    (if $I46
                                      (i32.eqz
                                        (local.tee $l2
                                          (f64.ge
                                            (local.tee $l20
                                              (f64.add
                                                (local.get $l21)
                                                (f64.const 0x1.0c6f7a0b5ed8ep-21 (;=5e-07;))))
                                            (f64.const 0x1.4p+3 (;=10;)))))
                                      (then
                                        (local.set $l4
                                          (i32.sub
                                            (local.get $l4)
                                            (i32.const 1)))
                                        (br $B28)))
                                    (local.set $l20
                                      (f64.div
                                        (local.get $l20)
                                        (f64.const 0x1.4p+3 (;=10;))))
                                    (br $B28)))
                                (unreachable))
                              (unreachable))))
                        (local.set $l4
                          (select
                            (local.get $l4)
                            (i32.ne
                              (local.get $l2)
                              (i32.const 67000))
                            (global.get $g1)))
                        (block $B47
                          (if $I48
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (br_if $B47
                                (local.get $l4))
                              (local.set $l2
                                (i32.load
                                  (local.get $l5)))
                              (local.set $l5
                                (i32.load offset=4
                                  (local.get $l5)))))
                          (if $I49
                            (select
                              (i32.eq
                                (local.get $l6)
                                (i32.const 8))
                              (i32.const 1)
                              (global.get $g1))
                            (then
                              (call $runtime.printstring
                                (local.get $l2)
                                (local.get $l5))
                              (drop
                                (br_if $B7
                                  (i32.const 8)
                                  (i32.eq
                                    (global.get $g1)
                                    (i32.const 1))))))
                          (br_if $B10
                            (i32.eqz
                              (global.get $g1))))
                        (local.set $l4
                          (select
                            (local.get $l4)
                            (i32.eq
                              (local.get $l2)
                              (i32.const 67764))
                            (global.get $g1)))
                        (block $B50
                          (block $B51
                            (block $B52
                              (if $I53
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (if $I54
                                    (i32.eqz
                                      (i32.or
                                        (i32.or
                                          (local.get $l4)
                                          (i32.eq
                                            (local.get $l2)
                                            (i32.const 67876)))
                                        (i32.or
                                          (i32.eq
                                            (local.get $l2)
                                            (i32.const 67884))
                                          (i32.eq
                                            (local.get $l2)
                                            (i32.const 67924)))))
                                    (then
                                      (br_if $B52
                                        (local.tee $l4
                                          (i32.ne
                                            (local.get $l2)
                                            (i32.const 67892))))))
                                  (local.set $l4
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67924)))))
                              (block $B55
                                (block $B56
                                  (if $I57
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B56
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=248
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load
                                            (local.get $l5))))
                                      (local.set $l8
                                        (i32.load offset=4
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 24)))))
                                  (if $I58
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 9))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l4)
                                        (i32.const 66864)
                                        (i32.const 20)
                                        (local.get $l2)
                                        (local.get $l8))
                                      (drop
                                        (br_if $B7
                                          (i32.const 9)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I59
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=252
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=24
                                            (local.get $l3))))
                                      (local.set $l8
                                        (i32.load offset=28
                                          (local.get $l3)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 16)))))
                                  (if $I60
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 10))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l4)
                                        (local.get $l2)
                                        (local.get $l8)
                                        (i32.const 66884)
                                        (i32.const 4))
                                      (drop
                                        (br_if $B7
                                          (i32.const 10)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I61
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=256
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=16
                                            (local.get $l3))))
                                      (local.set $l8
                                        (i32.load offset=20
                                          (local.get $l3)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 8)))
                                      (local.set $l5
                                        (i32.load offset=8
                                          (local.get $l5)))))
                                  (if $I62
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 11))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Type_.String
                                        (local.get $l4)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 11)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I63
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=260
                                        (local.get $l3)
                                        (local.tee $l5
                                          (i32.load offset=8
                                            (local.get $l3))))
                                      (local.set $l4
                                        (i32.load offset=12
                                          (local.get $l3)))))
                                  (if $I64
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 12))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l3)
                                        (local.get $l2)
                                        (local.get $l8)
                                        (local.get $l5)
                                        (local.get $l4))
                                      (drop
                                        (br_if $B7
                                          (i32.const 12)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I65
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=264
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=4
                                          (local.get $l3)))
                                      (br $B55))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67892))
                                    (global.get $g1)))
                                (block $B66
                                  (if $I67
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B66
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=268
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=8
                                            (local.get $l5))))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 32)))))
                                  (if $I68
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 13))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Error_.Error
                                        (local.get $l4)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 13)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I69
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=272
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=32
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=36
                                          (local.get $l3)))
                                      (br $B55))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67884))
                                    (global.get $g1)))
                                (block $B70
                                  (if $I71
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B70
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=276
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load
                                            (local.get $l5))))
                                      (local.set $l8
                                        (i32.load8_u offset=8
                                          (local.get $l5)))
                                      (local.set $l9
                                        (i32.load offset=4
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 80)))))
                                  (if $I72
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 14))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l4)
                                        (i32.const 65992)
                                        (i32.const 17)
                                        (local.get $l2)
                                        (local.get $l9))
                                      (drop
                                        (br_if $B7
                                          (i32.const 14)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I73
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (local.set $l4
                                        (i32.load offset=84
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=80
                                          (local.get $l3)))))
                                  (local.set $l2
                                    (block $B74 (result i32)
                                      (block $B75
                                        (if $I76
                                          (i32.eqz
                                            (global.get $g1))
                                          (then
                                            (br_if $B75
                                              (local.get $l8))
                                            (i32.store offset=280
                                              (local.get $l3)
                                              (local.get $l2))
                                            (local.set $l5
                                              (i32.add
                                                (local.get $l3)
                                                (i32.const 40)))))
                                        (if $I77
                                          (select
                                            (i32.eq
                                              (local.get $l6)
                                              (i32.const 15))
                                            (i32.const 1)
                                            (global.get $g1))
                                          (then
                                            (call $runtime.stringConcat
                                              (local.get $l5)
                                              (local.get $l2)
                                              (local.get $l4)
                                              (i32.const 65978)
                                              (i32.const 14))
                                            (drop
                                              (br_if $B7
                                                (i32.const 15)
                                                (i32.eq
                                                  (global.get $g1)
                                                  (i32.const 1))))))
                                        (if $I78
                                          (i32.eqz
                                            (global.get $g1))
                                          (then
                                            (local.set $l5
                                              (i32.load offset=44
                                                (local.get $l3)))
                                            (br $B74
                                              (i32.load offset=40
                                                (local.get $l3))))))
                                      (if $I79
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i32.store offset=284
                                            (local.get $l3)
                                            (local.get $l2))
                                          (local.set $l8
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 72)))))
                                      (if $I80
                                        (select
                                          (i32.eq
                                            (local.get $l6)
                                            (i32.const 16))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $runtime.stringConcat
                                            (local.get $l8)
                                            (local.get $l2)
                                            (local.get $l4)
                                            (i32.const 66884)
                                            (i32.const 4))
                                          (drop
                                            (br_if $B7
                                              (i32.const 16)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))))
                                      (if $I81
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i32.store offset=288
                                            (local.get $l3)
                                            (local.tee $l2
                                              (i32.load offset=72
                                                (local.get $l3))))
                                          (local.set $l8
                                            (i32.load offset=76
                                              (local.get $l3)))
                                          (local.set $l4
                                            (i32.sub
                                              (local.get $l3)
                                              (i32.const -64)))
                                          (local.set $l5
                                            (i32.load8_u offset=8
                                              (local.get $l5)))))
                                      (if $I82
                                        (select
                                          (i32.eq
                                            (local.get $l6)
                                            (i32.const 17))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $_reflect.Kind_.String
                                            (local.get $l4)
                                            (local.get $l5))
                                          (drop
                                            (br_if $B7
                                              (i32.const 17)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))))
                                      (if $I83
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i32.store offset=292
                                            (local.get $l3)
                                            (local.tee $l5
                                              (i32.load offset=64
                                                (local.get $l3))))
                                          (local.set $l9
                                            (i32.load offset=68
                                              (local.get $l3)))
                                          (local.set $l4
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 56)))))
                                      (if $I84
                                        (select
                                          (i32.eq
                                            (local.get $l6)
                                            (i32.const 18))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $runtime.stringConcat
                                            (local.get $l4)
                                            (local.get $l2)
                                            (local.get $l8)
                                            (local.get $l5)
                                            (local.get $l9))
                                          (drop
                                            (br_if $B7
                                              (i32.const 18)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))))
                                      (if $I85
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i32.store offset=296
                                            (local.get $l3)
                                            (local.tee $l2
                                              (i32.load offset=56
                                                (local.get $l3))))
                                          (local.set $l4
                                            (i32.load offset=60
                                              (local.get $l3)))
                                          (local.set $l5
                                            (i32.add
                                              (local.get $l3)
                                              (i32.const 48)))))
                                      (if $I86
                                        (select
                                          (i32.eq
                                            (local.get $l6)
                                            (i32.const 19))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $runtime.stringConcat
                                            (local.get $l5)
                                            (local.get $l2)
                                            (local.get $l4)
                                            (i32.const 66009)
                                            (i32.const 6))
                                          (drop
                                            (br_if $B7
                                              (i32.const 19)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))))
                                      (if $I87 (result i32)
                                        (global.get $g1)
                                        (then
                                          (local.get $l2))
                                        (else
                                          (local.set $l5
                                            (i32.load offset=52
                                              (local.get $l3)))
                                          (i32.load offset=48
                                            (local.get $l3))))))
                                  (if $I88
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=300
                                        (local.get $l3)
                                        (local.get $l2))
                                      (br $B55))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67876))
                                    (global.get $g1)))
                                (block $B89
                                  (if $I90
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B89
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=304
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load
                                            (local.get $l5))))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 96)))
                                      (local.set $l5
                                        (i32.load offset=4
                                          (local.get $l5)))))
                                  (if $I91
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 20))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l4)
                                        (i32.const 65932)
                                        (i32.const 30)
                                        (local.get $l2)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 20)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I92
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=308
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=96
                                            (local.get $l3))))
                                      (local.set $l4
                                        (i32.load offset=100
                                          (local.get $l3)))
                                      (local.set $l5
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 88)))))
                                  (if $I93
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 21))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.stringConcat
                                        (local.get $l5)
                                        (local.get $l2)
                                        (local.get $l4)
                                        (i32.const 65962)
                                        (i32.const 16))
                                      (drop
                                        (br_if $B7
                                          (i32.const 21)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I94
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=312
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=88
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=92
                                          (local.get $l3)))
                                      (br $B55))))
                                (if $I95
                                  (i32.eqz
                                    (global.get $g1))
                                  (then
                                    (br_if $B51
                                      (local.tee $l2
                                        (i32.ne
                                          (local.get $l2)
                                          (i32.const 67764))))
                                    (local.set $l22
                                      (i64.load
                                        (local.get $l5)))
                                    (local.set $l5
                                      (i32.load offset=8
                                        (local.get $l5)))
                                    (local.set $l2
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 104)))))
                                (if $I96
                                  (select
                                    (i32.eq
                                      (local.get $l6)
                                      (i32.const 22))
                                    (i32.const 1)
                                    (global.get $g1))
                                  (then
                                    (call $_syscall/js.Error_.Error
                                      (local.get $l2)
                                      (local.get $l22)
                                      (local.get $l5))
                                    (drop
                                      (br_if $B7
                                        (i32.const 22)
                                        (i32.eq
                                          (global.get $g1)
                                          (i32.const 1))))))
                                (if $I97
                                  (i32.eqz
                                    (global.get $g1))
                                  (then
                                    (local.set $l5
                                      (i32.load offset=108
                                        (local.get $l3)))
                                    (local.set $l2
                                      (i32.load offset=104
                                        (local.get $l3))))))
                              (if $I98
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (i32.store offset=316
                                    (local.get $l3)
                                    (local.get $l2))))
                              (if $I99
                                (select
                                  (i32.eq
                                    (local.get $l6)
                                    (i32.const 23))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.printstring
                                    (local.get $l2)
                                    (local.get $l5))
                                  (drop
                                    (br_if $B7
                                      (i32.const 23)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (br_if $B10
                                (i32.eqz
                                  (global.get $g1))))
                            (local.set $l4
                              (select
                                (local.get $l4)
                                (i32.eq
                                  (local.get $l2)
                                  (i32.const 67732))
                                (global.get $g1)))
                            (block $B100
                              (if $I101
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (if $I102
                                    (i32.eqz
                                      (i32.or
                                        (i32.or
                                          (i32.or
                                            (i32.or
                                              (local.get $l4)
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67792)))
                                            (i32.or
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67816))
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67840))))
                                          (i32.or
                                            (i32.or
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67868))
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67900)))
                                            (i32.or
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67908))
                                              (i32.eq
                                                (local.get $l2)
                                                (i32.const 67916)))))
                                        (i32.or
                                          (i32.or
                                            (i32.eq
                                              (local.get $l2)
                                              (i32.const 67932))
                                            (i32.eq
                                              (local.get $l2)
                                              (i32.const 67940)))
                                          (i32.eq
                                            (local.get $l2)
                                            (i32.const 67984)))))
                                    (then
                                      (br_if $B100
                                        (local.tee $l4
                                          (i32.ne
                                            (local.get $l2)
                                            (i32.const 67948))))))
                                  (local.set $l4
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67984)))))
                              (block $B103
                                (block $B104
                                  (if $I105
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B104
                                        (local.get $l4))
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 224)))
                                      (local.set $l2
                                        (i32.load offset=8
                                          (local.get $l5)))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (i64.store offset=228 align=4
                                        (local.get $l3)
                                        (i64.const 1))
                                      (i32.store offset=224
                                        (local.get $l3)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 112)))))
                                  (if $I106
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 24))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l5)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 24)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I107
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.load offset=116
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=112
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67948))
                                    (global.get $g1)))
                                (block $B108
                                  (if $I109
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B108
                                        (local.get $l4))
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 224)))
                                      (local.set $l2
                                        (i32.load offset=8
                                          (local.get $l5)))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (i64.store offset=228 align=4
                                        (local.get $l3)
                                        (i64.const 1))
                                      (i32.store offset=224
                                        (local.get $l3)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 120)))))
                                  (if $I110
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 25))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l5)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 25)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I111
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.load offset=124
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=120
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67940))
                                    (global.get $g1)))
                                (block $B112
                                  (if $I113
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B112
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=320
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=8
                                            (local.get $l5))))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 128)))))
                                  (if $I114
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 26))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l4)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 26)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I115
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=324
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=128
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=132
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67932))
                                    (global.get $g1)))
                                (block $B116
                                  (if $I117
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B116
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=328
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=8
                                            (local.get $l5))))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 136)))))
                                  (if $I118
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 27))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l4)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 27)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I119
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=332
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=136
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=140
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67916))
                                    (global.get $g1)))
                                (block $B120
                                  (if $I121
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B120
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=336
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=8
                                            (local.get $l5))))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 144)))))
                                  (if $I122
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 28))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l4)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 28)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I123
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=340
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=144
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=148
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67908))
                                    (global.get $g1)))
                                (block $B124
                                  (if $I125
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B124
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (local.set $l5
                                        (i32.load
                                          (local.get $l5)))
                                      (local.set $l2
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 152)))))
                                  (if $I126
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 29))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Type_.String
                                        (local.get $l2)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 29)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I127
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=344
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=152
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=156
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67900))
                                    (global.get $g1)))
                                (block $B128
                                  (if $I129
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B128
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (i32.store offset=348
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=8
                                            (local.get $l5))))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l4
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 160)))))
                                  (if $I130
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 30))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l4)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 30)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I131
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=352
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=160
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=164
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67868))
                                    (global.get $g1)))
                                (block $B132
                                  (if $I133
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B132
                                        (local.get $l4))
                                      (br_if $B51
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l5))))
                                      (local.set $l5
                                        (i32.load8_u
                                          (local.get $l5)))
                                      (local.set $l2
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 168)))))
                                  (if $I134
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 31))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_reflect.Kind_.String
                                        (local.get $l2)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 31)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I135
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=356
                                        (local.get $l3)
                                        (local.tee $l2
                                          (i32.load offset=168
                                            (local.get $l3))))
                                      (local.set $l5
                                        (i32.load offset=172
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67840))
                                    (global.get $g1)))
                                (block $B136
                                  (if $I137
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B136
                                        (local.get $l4))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (local.set $l5
                                        (i32.load offset=8
                                          (local.get $l5)))
                                      (local.set $l2
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 176)))))
                                  (if $I138
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 32))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l2)
                                        (local.get $l22)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 32)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I139
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (local.set $l5
                                        (i32.load offset=180
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=176
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67816))
                                    (global.get $g1)))
                                (block $B140
                                  (if $I141
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B140
                                        (local.get $l4))
                                      (local.set $l2
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 184)))))
                                  (if $I142
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 33))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Type_.String
                                        (local.get $l2)
                                        (local.get $l5))
                                      (drop
                                        (br_if $B7
                                          (i32.const 33)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I143
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (local.set $l5
                                        (i32.load offset=188
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=184
                                          (local.get $l3)))
                                      (br $B103))))
                                (local.set $l4
                                  (select
                                    (local.get $l4)
                                    (i32.ne
                                      (local.get $l2)
                                      (i32.const 67792))
                                    (global.get $g1)))
                                (block $B144
                                  (if $I145
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B144
                                        (local.get $l4))
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 224)))
                                      (local.set $l2
                                        (i32.load offset=8
                                          (local.get $l5)))
                                      (local.set $l22
                                        (i64.load
                                          (local.get $l5)))
                                      (i64.store offset=228 align=4
                                        (local.get $l3)
                                        (i64.const 1))
                                      (i32.store offset=224
                                        (local.get $l3)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 192)))))
                                  (if $I146
                                    (select
                                      (i32.eq
                                        (local.get $l6)
                                        (i32.const 34))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.String
                                        (local.get $l5)
                                        (local.get $l22)
                                        (local.get $l2))
                                      (drop
                                        (br_if $B7
                                          (i32.const 34)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I147
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store
                                        (i32.const 68316)
                                        (i32.add
                                          (local.get $l3)
                                          (i32.const 240)))
                                      (local.set $l5
                                        (i32.load offset=196
                                          (local.get $l3)))
                                      (local.set $l2
                                        (i32.load offset=192
                                          (local.get $l3)))
                                      (br $B103))))
                                (if $I148
                                  (i32.eqz
                                    (global.get $g1))
                                  (then
                                    (br_if $B51
                                      (local.tee $l2
                                        (i32.ne
                                          (local.get $l2)
                                          (i32.const 67732))))
                                    (local.set $l2
                                      (i32.add
                                        (local.get $l3)
                                        (i32.const 200)))))
                                (if $I149
                                  (select
                                    (i32.eq
                                      (local.get $l6)
                                      (i32.const 35))
                                    (i32.const 1)
                                    (global.get $g1))
                                  (then
                                    (call $_reflect.Kind_.String
                                      (local.get $l2)
                                      (local.get $l5))
                                    (drop
                                      (br_if $B7
                                        (i32.const 35)
                                        (i32.eq
                                          (global.get $g1)
                                          (i32.const 1))))))
                                (if $I150
                                  (i32.eqz
                                    (global.get $g1))
                                  (then
                                    (local.set $l5
                                      (i32.load offset=204
                                        (local.get $l3)))
                                    (local.set $l2
                                      (i32.load offset=200
                                        (local.get $l3))))))
                              (if $I151
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (i32.store offset=360
                                    (local.get $l3)
                                    (local.get $l2))))
                              (if $I152
                                (select
                                  (i32.eq
                                    (local.get $l6)
                                    (i32.const 36))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.printstring
                                    (local.get $l2)
                                    (local.get $l5))
                                  (drop
                                    (br_if $B7
                                      (i32.const 36)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (br_if $B10
                                (i32.eqz
                                  (global.get $g1))))
                            (if $I153
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 37))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.putchar
                                  (i32.const 40))
                                (drop
                                  (br_if $B7
                                    (i32.const 37)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I154
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 38))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.printuint32
                                  (local.get $l2))
                                (drop
                                  (br_if $B7
                                    (i32.const 38)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I155
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 39))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.putchar
                                  (i32.const 58))
                                (drop
                                  (br_if $B7
                                    (i32.const 39)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I156
                              (select
                                (global.get $g1)
                                (i32.const 1)
                                (local.get $l5))
                              (then
                                (if $I157
                                  (select
                                    (i32.eq
                                      (local.get $l6)
                                      (i32.const 40))
                                    (i32.const 1)
                                    (global.get $g1))
                                  (then
                                    (call $runtime.printstring
                                      (i32.const 66222)
                                      (i32.const 3))
                                    (drop
                                      (br_if $B7
                                        (i32.const 40)
                                        (i32.eq
                                          (global.get $g1)
                                          (i32.const 1))))))
                                (br_if $B50
                                  (i32.eqz
                                    (global.get $g1)))))
                            (if $I158
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 41))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.putchar
                                  (i32.const 48))
                                (drop
                                  (br_if $B7
                                    (i32.const 41)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I159
                              (select
                                (i32.eq
                                  (local.get $l6)
                                  (i32.const 42))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.putchar
                                  (i32.const 120))
                                (drop
                                  (br_if $B7
                                    (i32.const 42)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (local.set $l2
                              (select
                                (local.get $l2)
                                (i32.const 8)
                                (global.get $g1)))
                            (loop $L160
                              (if $I161
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (br_if $B50
                                    (local.tee $l4
                                      (i32.eqz
                                        (local.get $l2))))
                                  (local.set $l4
                                    (select
                                      (i32.or
                                        (local.tee $l4
                                          (i32.shr_u
                                            (local.get $l5)
                                            (i32.const 28)))
                                        (i32.const 48))
                                      (local.tee $l9
                                        (i32.add
                                          (local.get $l4)
                                          (i32.const 87)))
                                      (local.tee $l8
                                        (i32.lt_u
                                          (local.get $l4)
                                          (i32.const 10)))))))
                              (if $I162
                                (select
                                  (i32.eq
                                    (local.get $l6)
                                    (i32.const 43))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.putchar
                                    (local.get $l4))
                                  (drop
                                    (br_if $B7
                                      (i32.const 43)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (if $I163
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (local.set $l2
                                    (i32.sub
                                      (local.get $l2)
                                      (i32.const 1)))
                                  (local.set $l5
                                    (i32.shl
                                      (local.get $l5)
                                      (i32.const 4)))
                                  (br $L160)))))
                          (if $I164
                            (select
                              (i32.eq
                                (local.get $l6)
                                (i32.const 44))
                              (i32.const 1)
                              (global.get $g1))
                            (then
                              (call $runtime.nilPanic)
                              (drop
                                (br_if $B7
                                  (i32.const 44)
                                  (i32.eq
                                    (global.get $g1)
                                    (i32.const 1))))))
                          (if $I165
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (unreachable))))
                        (if $I166
                          (select
                            (i32.eq
                              (local.get $l6)
                              (i32.const 45))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.putchar
                              (i32.const 41))
                            (drop
                              (br_if $B7
                                (i32.const 45)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (br_if $B10
                          (i32.eqz
                            (global.get $g1))))
                      (if $I167
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (local.set $l5
                            (i32.or
                              (i32.add
                                (local.get $l3)
                                (i32.const 208))
                              (i32.const 2)))
                          (local.set $l2
                            (i32.const 0))
                          (loop $L168
                            (if $I169
                              (i32.ne
                                (local.get $l2)
                                (i32.const 7))
                              (then
                                (i32.store8
                                  (i32.add
                                    (local.get $l2)
                                    (local.get $l5))
                                  (i32.add
                                    (local.tee $l7
                                      (select
                                        (select
                                          (i32.trunc_sat_f64_s
                                            (local.get $l20))
                                          (local.tee $l8
                                            (select
                                              (select
                                                (i32.const 2147483647)
                                                (i32.const -2147483648)
                                                (local.tee $l7
                                                  (f64.ge
                                                    (local.get $l20)
                                                    (f64.const -0x1p+31 (;=-2.14748e+09;)))))
                                              (i32.const 0)
                                              (f64.eq
                                                (local.get $l20)
                                                (local.get $l20))))
                                          (f64.le
                                            (local.get $l20)
                                            (f64.const 0x1.fffffffcp+30 (;=2.14748e+09;))))
                                        (local.get $l8)
                                        (local.get $l7)))
                                    (i32.const 48)))
                                (local.set $l20
                                  (f64.mul
                                    (f64.sub
                                      (local.get $l20)
                                      (f64.convert_i32_s
                                        (local.get $l7)))
                                    (f64.const 0x1.4p+3 (;=10;))))
                                (local.set $l2
                                  (i32.add
                                    (local.get $l2)
                                    (i32.const 1)))
                                (br $L168))))
                          (local.set $l5
                            (i32.mul
                              (local.tee $l7
                                (i32.div_s
                                  (local.tee $l2
                                    (i32.sub
                                      (i32.xor
                                        (local.get $l4)
                                        (local.tee $l2
                                          (i32.shr_s
                                            (local.get $l4)
                                            (i32.const 31))))
                                      (local.get $l2)))
                                  (i32.const 10)))
                              (i32.const 246)))
                          (local.set $l5
                            (i32.add
                              (i32.add
                                (local.get $l2)
                                (local.get $l5))
                              (i32.const 48)))
                          (local.set $l8
                            (i32.add
                              (i32.div_s
                                (local.get $l2)
                                (i32.const 100))
                              (i32.const 48)))
                          (local.set $l9
                            (i32.or
                              (i32.rem_u
                                (i32.and
                                  (local.get $l7)
                                  (i32.const 255))
                                (i32.const 10))
                              (i32.const 48)))
                          (local.set $l4
                            (select
                              (i32.const 45)
                              (i32.const 43)
                              (i32.lt_s
                                (local.get $l4)
                                (i32.const 0))))
                          (local.set $l13
                            (i32.load8_u offset=216
                              (local.get $l3)))
                          (local.set $l14
                            (i32.load8_u offset=215
                              (local.get $l3)))
                          (local.set $l15
                            (i32.load8_u offset=214
                              (local.get $l3)))
                          (local.set $l16
                            (i32.load8_u offset=213
                              (local.get $l3)))
                          (local.set $l17
                            (i32.load8_u offset=212
                              (local.get $l3)))
                          (local.set $l18
                            (i32.load8_u offset=211
                              (local.get $l3)))
                          (local.set $l7
                            (i32.load8_u offset=210
                              (local.get $l3)))
                          (local.set $l2
                            (i32.const 0))))
                      (loop $L170
                        (if $I171
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $B10
                              (i32.eq
                                (local.get $l2)
                                (i32.const 14)))
                            (i32.store8 offset=237
                              (local.get $l3)
                              (local.get $l5))
                            (i32.store8 offset=236
                              (local.get $l3)
                              (local.get $l9))
                            (i32.store8 offset=235
                              (local.get $l3)
                              (local.get $l8))
                            (i32.store8 offset=234
                              (local.get $l3)
                              (local.get $l4))
                            (i32.store8 offset=233
                              (local.get $l3)
                              (i32.const 101))
                            (i32.store8 offset=232
                              (local.get $l3)
                              (local.get $l13))
                            (i32.store8 offset=231
                              (local.get $l3)
                              (local.get $l14))
                            (i32.store8 offset=230
                              (local.get $l3)
                              (local.get $l15))
                            (i32.store8 offset=229
                              (local.get $l3)
                              (local.get $l16))
                            (i32.store8 offset=228
                              (local.get $l3)
                              (local.get $l17))
                            (i32.store8 offset=227
                              (local.get $l3)
                              (local.get $l18))
                            (i32.store8 offset=226
                              (local.get $l3)
                              (i32.const 46))
                            (i32.store8 offset=225
                              (local.get $l3)
                              (local.get $l7))
                            (i32.store8 offset=224
                              (local.get $l3)
                              (local.get $l10))
                            (local.set $l11
                              (i32.load8_u
                                (i32.add
                                  (i32.add
                                    (local.get $l3)
                                    (i32.const 224))
                                  (local.get $l2))))))
                        (if $I172
                          (select
                            (i32.eq
                              (local.get $l6)
                              (i32.const 46))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.putchar
                              (local.get $l11))
                            (drop
                              (br_if $B7
                                (i32.const 46)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (if $I173
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (local.set $l2
                              (i32.add
                                (local.get $l2)
                                (i32.const 1)))
                            (br $L170)))))
                    (if $I174
                      (select
                        (i32.eq
                          (local.get $l6)
                          (i32.const 47))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime.printuint32
                          (local.get $l5))
                        (drop
                          (br_if $B7
                            (i32.const 47)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1)))))))
                  (if $I175
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (i32.const 68316)
                        (local.get $l12))
                      (global.set $__stack_pointer
                        (i32.add
                          (local.get $l3)
                          (i32.const 368)))))
                  (br $B6)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l6))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l6
                  (i32.load
                    (global.get $g2)))
                (local.get $l2))
              (i32.store offset=4
                (local.get $l6)
                (local.get $l5))
              (i32.store offset=8
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=12
                (local.get $l6)
                (local.get $l4))
              (f64.store offset=16 align=4
                (local.get $l6)
                (local.get $l20))
              (i64.store offset=24 align=4
                (local.get $l6)
                (local.get $l22))
              (i32.store offset=32
                (local.get $l6)
                (local.get $l8))
              (f64.store offset=36 align=4
                (local.get $l6)
                (local.get $l21))
              (i32.store offset=44
                (local.get $l6)
                (local.get $l9))
              (i32.store offset=48
                (local.get $l6)
                (local.get $l10))
              (i32.store offset=52
                (local.get $l6)
                (local.get $l11))
              (i32.store offset=56
                (local.get $l6)
                (local.get $l12))
              (i32.store offset=60
                (local.get $l6)
                (local.get $l13))
              (i32.store offset=64
                (local.get $l6)
                (local.get $l14))
              (i32.store offset=68
                (local.get $l6)
                (local.get $l15))
              (i32.store offset=72
                (local.get $l6)
                (local.get $l16))
              (i32.store offset=76
                (local.get $l6)
                (local.get $l17))
              (i32.store offset=80
                (local.get $l6)
                (local.get $l18))
              (i32.store offset=84
                (local.get $l6)
                (local.get $l7))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 88))))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I176
          (select
            (i32.eq
              (local.get $l19)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.printnl)
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I177
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 8))))
  (func $runtime.calculateHeapAddresses (type $t0)
    (local $l0 i32)
    (i32.store
      (i32.const 68272)
      (local.tee $l0
        (i32.sub
          (local.tee $l0
            (i32.load
              (i32.const 68136)))
          (i32.div_u
            (i32.sub
              (local.get $l0)
              (i32.const 68800))
            (i32.const 65)))))
    (i32.store
      (i32.const 68280)
      (i32.shr_u
        (i32.sub
          (local.get $l0)
          (i32.const 68864))
        (i32.const 4))))
  (func $runtime.run$1$gowrapper (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i64)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l10
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (select
              (local.get $l10)
              (i32.const 0)
              (global.get $g1)))
          (then
            (local.set $p0
              (i32.const 0))
            (if $I3
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 40)))
                (local.set $p0
                  (i32.load
                    (local.tee $l2
                      (i32.load
                        (global.get $g2)))))
                (local.set $l4
                  (i32.load offset=8
                    (local.get $l2)))
                (local.set $l11
                  (i64.load offset=12 align=4
                    (local.get $l2)))
                (local.set $l5
                  (i32.load offset=20
                    (local.get $l2)))
                (local.set $l6
                  (i32.load offset=24
                    (local.get $l2)))
                (local.set $l7
                  (i32.load offset=28
                    (local.get $l2)))
                (local.set $l8
                  (i32.load offset=32
                    (local.get $l2)))
                (local.set $l9
                  (i32.load offset=36
                    (local.get $l2)))
                (local.set $l1
                  (i32.load offset=4
                    (local.get $l2)))))
            (block $B4
              (local.set $l2
                (block $B5 (result i32)
                  (if $I6
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l3
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I7
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l1
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 128))))
                      (i64.store
                        (local.tee $l7
                          (i32.add
                            (local.get $l1)
                            (i32.const 104)))
                        (i64.const 0))
                      (i64.store
                        (local.tee $l8
                          (i32.add
                            (local.get $l1)
                            (i32.const 112)))
                        (i64.const 0))
                      (i32.store
                        (local.tee $l9
                          (i32.add
                            (local.get $l1)
                            (i32.const 120)))
                        (i32.const 0))
                      (i64.store offset=96
                        (local.get $l1)
                        (i64.const 0))
                      (i32.store offset=76
                        (local.get $l1)
                        (i32.const 11))
                      (local.set $l6
                        (i32.load
                          (i32.const 68316)))
                      (i32.store
                        (i32.const 68316)
                        (i32.add
                          (local.get $l1)
                          (i32.const 72)))
                      (i32.store offset=72
                        (local.get $l1)
                        (local.get $l6))
                      (i32.store
                        (i32.const 68136)
                        (i32.shl
                          (memory.size)
                          (i32.const 16)))
                      (local.set $p0
                        (i32.add
                          (local.get $l1)
                          (i32.const 40)))))
                  (if $I8
                    (i32.eqz
                      (select
                        (local.get $l3)
                        (i32.const 0)
                        (global.get $g1)))
                    (then
                      (call $_syscall/js.Value_.Get
                        (local.get $p0)
                        (i64.const 9221120241336057861)
                        (i32.const 0)
                        (i32.const 66296)
                        (i32.const 6))
                      (drop
                        (br_if $B5
                          (i32.const 0)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I9
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i64.store
                        (i32.const 68608)
                        (local.tee $l11
                          (i64.load offset=40
                            (local.get $l1))))
                      (i32.store
                        (i32.const 68616)
                        (local.tee $p0
                          (i32.load offset=48
                            (local.get $l1))))
                      (i32.store offset=80
                        (local.get $l1)
                        (local.get $p0))
                      (local.set $p0
                        (i32.add
                          (local.get $l1)
                          (i32.const 24)))))
                  (if $I10
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 1))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_syscall/js.Value_.Get
                        (local.get $p0)
                        (i64.const 9221120241336057861)
                        (i32.const 0)
                        (i32.const 66302)
                        (i32.const 5))
                      (drop
                        (br_if $B5
                          (i32.const 1)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I11
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i64.store
                        (i32.const 68624)
                        (local.tee $l11
                          (i64.load offset=24
                            (local.get $l1))))
                      (i32.store
                        (i32.const 68632)
                        (local.tee $p0
                          (i32.load offset=32
                            (local.get $l1))))
                      (i32.store offset=84
                        (local.get $l1)
                        (local.get $p0))))
                  (if $I12
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 2))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.alloc
                        (i32.const 32))
                      (drop
                        (br_if $B5
                          (i32.const 2)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $p0)))
                  (if $I13
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=28
                        (local.get $p0)
                        (i32.const 68312))
                      (i64.store align=4
                        (local.get $p0)
                        (i64.const 0))
                      (i32.store offset=88
                        (local.get $l1)
                        (local.get $p0))
                      (i32.store offset=92
                        (local.get $l1)
                        (local.get $p0))))
                  (if $I14
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 3))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_*sync.Mutex_.Lock)
                      (drop
                        (br_if $B5
                          (i32.const 3)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I15
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (i32.const 68080)
                        (i32.add
                          (local.tee $l5
                            (i32.load
                              (i32.const 68080)))
                          (i32.const 1)))
                      (i32.store offset=68
                        (local.get $l1)
                        (i32.const 3))
                      (i32.store offset=60
                        (local.get $l1)
                        (local.get $l5))
                      (local.set $l4
                        (i32.sub
                          (local.get $l1)
                          (i32.const -64)))
                      (local.set $p0
                        (i32.add
                          (local.get $l1)
                          (i32.const 60)))))
                  (if $I16
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 4))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.hashmapBinarySet
                        (i32.const 68084)
                        (local.get $p0)
                        (local.get $l4))
                      (drop
                        (br_if $B5
                          (i32.const 4)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I17
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 5))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_*sync.Mutex_.Unlock)
                      (drop
                        (br_if $B5
                          (i32.const 5)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I18
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=68
                        (local.get $l1)
                        (local.get $l5))
                      (i32.store offset=64
                        (local.get $l1)
                        (i32.const 67708))
                      (i32.store offset=96
                        (local.get $l1)
                        (local.get $l5))
                      (local.set $l4
                        (i32.sub
                          (local.get $l1)
                          (i32.const -64)))
                      (local.set $p0
                        (i32.add
                          (local.get $l1)
                          (i32.const 8)))))
                  (if $I19
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 6))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_syscall/js.Value_.Call
                        (local.get $p0)
                        (i64.const 9221120241336057862)
                        (i32.const 0)
                        (i32.const 66307)
                        (i32.const 16)
                        (local.get $l4)
                        (i32.const 1))
                      (drop
                        (br_if $B5
                          (i32.const 6)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I20
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (local.get $l7)
                        (local.tee $l4
                          (i32.load offset=16
                            (local.get $l1))))
                      (i32.store offset=108
                        (local.get $l1)
                        (local.get $l4))
                      (i32.store offset=100
                        (local.get $l1)
                        (local.get $l4))
                      (local.set $l11
                        (i64.load offset=8
                          (local.get $l1)))))
                  (if $I21
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 7))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.alloc
                        (i32.const 24))
                      (drop
                        (br_if $B5
                          (i32.const 7)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $p0)))
                  (if $I22
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (local.get $l8)
                        (local.get $p0))
                      (i64.store
                        (local.get $p0)
                        (local.get $l11))
                      (i32.store offset=8
                        (local.get $p0)
                        (local.get $l4))
                      (i32.store offset=16
                        (local.get $p0)
                        (local.get $l5))
                      (i32.store offset=116
                        (local.get $l1)
                        (local.get $p0))))
                  (if $I23
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 8))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_syscall/js.Value_.Set
                        (i64.const 9221120241336057861)
                        (i32.const 0)
                        (i32.const 67724)
                        (i32.const 5)
                        (i32.const 67792)
                        (local.get $p0))
                      (drop
                        (br_if $B5
                          (i32.const 8)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I24
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (local.get $l9)
                        (local.tee $p0
                          (i32.load
                            (i32.const 68132))))))
                  (if $I25
                    (select
                      (global.get $g1)
                      (i32.const 1)
                      (local.get $p0))
                    (then
                      (if $I26
                        (select
                          (i32.eq
                            (local.get $l3)
                            (i32.const 9))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call $runtime.nilPanic)
                          (drop
                            (br_if $B5
                              (i32.const 9)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (if $I27
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (unreachable)))))
                  (if $I28
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i64.store offset=8
                        (local.get $p0)
                        (i64.const 1))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.const 0))))
                  (if $I29
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 10))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $internal/task.Pause)
                      (drop
                        (br_if $B5
                          (i32.const 10)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I30
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i64.store offset=8
                        (local.get $p0)
                        (i64.const 0))
                      (i32.store offset=4
                        (local.get $p0)
                        (i32.const 0))
                      (i32.store8
                        (i32.const 68325)
                        (i32.const 1))
                      (i32.store
                        (i32.const 68316)
                        (local.get $l6))
                      (global.set $__stack_pointer
                        (i32.add
                          (local.get $l1)
                          (i32.const 128)))))
                  (br $B4)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l2))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l2
                  (i32.load
                    (global.get $g2)))
                (local.get $p0))
              (i32.store offset=4
                (local.get $l2)
                (local.get $l1))
              (i32.store offset=8
                (local.get $l2)
                (local.get $l4))
              (i64.store offset=12 align=4
                (local.get $l2)
                (local.get $l11))
              (i32.store offset=20
                (local.get $l2)
                (local.get $l5))
              (i32.store offset=24
                (local.get $l2)
                (local.get $l6))
              (i32.store offset=28
                (local.get $l2)
                (local.get $l7))
              (i32.store offset=32
                (local.get $l2)
                (local.get $l8))
              (i32.store offset=36
                (local.get $l2)
                (local.get $l9))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 40))))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I31
          (select
            (i32.eq
              (local.get $l10)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.deadlock)
            (drop
              (br_if $B0
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I32
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.scheduler (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 4)))
        (local.set $l0
          (i32.load
            (i32.load
              (global.get $g2))))))
    (local.set $l1
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (loop $L3
          (block $B4
            (if $I5
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B4
                  (i32.load8_u
                    (i32.const 68325)))
                (if $I6
                  (local.tee $l0
                    (i32.load
                      (i32.const 68264)))
                  (then
                    (i32.store
                      (i32.const 68264)
                      (i32.load
                        (local.get $l0)))
                    (if $I7
                      (i32.eq
                        (local.get $l0)
                        (i32.load
                          (i32.const 68268)))
                      (then
                        (i32.store
                          (i32.const 68268)
                          (i32.const 0))))
                    (i32.store
                      (local.get $l0)
                      (i32.const 0))))
                (br_if $B4
                  (i32.eqz
                    (local.get $l0)))))
            (if $I8
              (i32.eqz
                (select
                  (local.get $l4)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (local.set $l3
                  (i32.const 0))
                (block $B9
                  (local.set $l1
                    (block $B10 (result i32)
                      (if $I11
                        (i32.eq
                          (global.get $g1)
                          (i32.const 2))
                        (then
                          (i32.store
                            (global.get $g2)
                            (i32.sub
                              (i32.load
                                (global.get $g2))
                              (i32.const 4)))
                          (local.set $l3
                            (i32.load
                              (i32.load
                                (global.get $g2))))))
                      (if $I12
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (local.set $l1
                            (i32.load offset=16
                              (local.get $l0)))
                          (i32.store offset=16
                            (local.get $l0)
                            (i32.load
                              (i32.const 68316)))
                          (i32.store
                            (i32.const 68316)
                            (local.get $l1))
                          (local.set $l5
                            (i32.load
                              (i32.const 68132)))
                          (i32.store
                            (i32.const 68132)
                            (local.get $l0))
                          (local.set $l2
                            (i32.add
                              (local.get $l0)
                              (i32.const 20)))
                          (block $B13
                            (if $I14
                              (i32.load8_u
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 36)))
                              (then
                                (global.get $__stack_pointer)
                                (global.set $__stack_pointer
                                  (i32.load offset=12
                                    (local.get $l2)))
                                (i32.load offset=4
                                  (local.get $l2))
                                (i32.load
                                  (local.get $l2))
                                (i32.store8
                                  (i32.const 68128)
                                  (i32.const 1))
                                (call $asyncify_start_rewind
                                  (i32.add
                                    (local.get $l2)
                                    (i32.const 8)))
                                (call_indirect $T0 (type $t1))
                                (call $asyncify_stop_unwind)
                                (global.set $__stack_pointer)
                                (br $B13)))
                            (global.get $__stack_pointer)
                            (global.set $__stack_pointer
                              (i32.load offset=12
                                (local.get $l2)))
                            (call_indirect $T0 (type $t1)
                              (i32.load offset=4
                                (local.get $l2))
                              (i32.load
                                (local.get $l2)))
                            (call $asyncify_stop_unwind)
                            (global.set $__stack_pointer)
                            (i32.store8 offset=36
                              (local.get $l0)
                              (i32.const 1)))
                          (i32.store
                            (i32.const 68132)
                            (local.get $l5))
                          (local.set $l1
                            (i32.load
                              (i32.const 68316)))
                          (i32.store
                            (i32.const 68316)
                            (i32.load offset=16
                              (local.get $l0)))
                          (i32.store offset=16
                            (local.get $l0)
                            (local.get $l1))
                          (br_if $B9
                            (i32.ge_u
                              (i32.load
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 32)))
                              (i32.load
                                (i32.add
                                  (local.get $l0)
                                  (i32.const 28)))))))
                      (if $I15
                        (i32.eqz
                          (select
                            (local.get $l3)
                            (i32.const 0)
                            (global.get $g1)))
                        (then
                          (call $runtime.runtimePanic)
                          (drop
                            (br_if $B10
                              (i32.const 0)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (if $I16
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (unreachable)))
                      (br $B9)))
                  (i32.store
                    (i32.load
                      (global.get $g2))
                    (local.get $l1))
                  (i32.store
                    (global.get $g2)
                    (i32.add
                      (i32.load
                        (global.get $g2))
                      (i32.const 4))))
                (drop
                  (br_if $B1
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (br_if $L3
              (i32.eqz
                (global.get $g1)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.resume$1$gowrapper (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i64) (local $l17 i64) (local $l18 i64) (local $l19 i64) (local $l20 i64) (local $l21 f64)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l15
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (select
              (local.get $l15)
              (i32.const 0)
              (global.get $g1)))
          (then
            (local.set $p0
              (i32.const 0))
            (if $I3
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 84)))
                (local.set $l1
                  (i32.load
                    (local.tee $p0
                      (i32.load
                        (global.get $g2)))))
                (local.set $l2
                  (i32.load offset=4
                    (local.get $p0)))
                (local.set $l5
                  (i32.load offset=12
                    (local.get $p0)))
                (local.set $l16
                  (i64.load offset=16 align=4
                    (local.get $p0)))
                (local.set $l6
                  (i32.load offset=24
                    (local.get $p0)))
                (local.set $l7
                  (i32.load offset=28
                    (local.get $p0)))
                (local.set $l8
                  (i32.load offset=32
                    (local.get $p0)))
                (local.set $l9
                  (i32.load offset=36
                    (local.get $p0)))
                (local.set $l18
                  (i64.load offset=40 align=4
                    (local.get $p0)))
                (local.set $l17
                  (i64.load offset=48 align=4
                    (local.get $p0)))
                (local.set $l11
                  (i32.load offset=56
                    (local.get $p0)))
                (local.set $l10
                  (i32.load offset=60
                    (local.get $p0)))
                (local.set $l13
                  (i32.load offset=64
                    (local.get $p0)))
                (local.set $l12
                  (i32.load offset=68
                    (local.get $p0)))
                (local.set $l14
                  (i32.load offset=72
                    (local.get $p0)))
                (local.set $l19
                  (i64.load offset=76 align=4
                    (local.get $p0)))
                (local.set $p0
                  (i32.load offset=8
                    (local.get $p0)))))
            (block $B4
              (local.set $l3
                (block $B5 (result i32)
                  (if $I6
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l4
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I7
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l1
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 272))))
                      (i32.store offset=148
                        (local.get $l1)
                        (i32.const 29))
                      (memory.fill
                        (i32.add
                          (local.get $l1)
                          (i32.const 152))
                        (i32.const 0)
                        (i32.const 116))
                      (i32.store offset=144
                        (local.get $l1)
                        (local.tee $l13
                          (i32.load
                            (i32.const 68316))))
                      (i32.store
                        (i32.const 68316)
                        (i32.add
                          (local.get $l1)
                          (i32.const 144)))
                      (local.set $l2
                        (i32.add
                          (local.get $l1)
                          (i32.const 112)))))
                  (if $I8
                    (i32.eqz
                      (select
                        (local.get $l4)
                        (i32.const 0)
                        (global.get $g1)))
                    (then
                      (call $_syscall/js.Value_.Get
                        (local.get $l2)
                        (i64.const 9221120241336057862)
                        (i32.const 0)
                        (i32.const 66341)
                        (i32.const 13))
                      (drop
                        (br_if $B5
                          (i32.const 0)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I9
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=152
                        (local.get $l1)
                        (local.tee $l9
                          (i32.load offset=120
                            (local.get $l1))))
                      (local.set $l2
                        (i64.eq
                          (local.tee $l18
                            (i64.load offset=112
                              (local.get $l1)))
                          (i64.const 9221120237041090562)))))
                  (block $B10
                    (block $B11
                      (block $B12
                        (block $B13
                          (block $B14
                            (br_if $B14
                              (i32.eqz
                                (select
                                  (global.get $g1)
                                  (i32.const 1)
                                  (local.get $l2))))
                            (if $I15
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 1))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.alloc
                                  (i32.const 16))
                                (drop
                                  (br_if $B5
                                    (i32.const 1)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))
                                (local.set $p0)))
                            (if $I16
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (i64.store
                                  (local.get $p0)
                                  (i64.const 9221120237041090562))
                                (i32.store offset=8
                                  (local.get $p0)
                                  (i32.const 0))
                                (i32.store offset=156
                                  (local.get $l1)
                                  (local.get $p0))
                                (i32.store offset=160
                                  (local.get $l1)
                                  (local.get $p0))))
                            (if $I17
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 2))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_syscall/js.Value_.Set
                                  (i64.const 9221120241336057862)
                                  (i32.const 0)
                                  (i32.const 66341)
                                  (i32.const 13)
                                  (i32.const 67840)
                                  (local.get $p0))
                                (drop
                                  (br_if $B5
                                    (i32.const 2)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (local.set $l2
                              (select
                                (local.get $l2)
                                (i32.add
                                  (local.get $l1)
                                  (i32.const 96))
                                (global.get $g1)))
                            (if $I18
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 3))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_syscall/js.Value_.Get
                                  (local.get $l2)
                                  (local.get $l18)
                                  (local.get $l9)
                                  (i32.const 66354)
                                  (i32.const 2))
                                (drop
                                  (br_if $B5
                                    (i32.const 3)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I19
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (i32.store offset=176
                                  (local.get $l1)
                                  (local.tee $p0
                                    (i32.load offset=104
                                      (local.get $l1))))
                                (i32.store offset=168
                                  (local.get $l1)
                                  (local.get $p0))
                                (i32.store offset=164
                                  (local.get $l1)
                                  (local.get $p0))
                                (br_if $B13
                                  (local.tee $l2
                                    (i32.eqz
                                      (i32.and
                                        (call $_syscall/js.Value_.isNumber
                                          (local.tee $l16
                                            (i64.load offset=96
                                              (local.get $l1))))
                                        (i32.const 1)))))
                                (br_if $B12
                                  (local.tee $l2
                                    (i32.eqz
                                      (local.tee $p0
                                        (select
                                          (select
                                            (i32.trunc_sat_f64_s
                                              (local.tee $l21
                                                (select
                                                  (f64.const 0x0p+0 (;=0;))
                                                  (f64.reinterpret_i64
                                                    (local.get $l16))
                                                  (i64.eq
                                                    (local.get $l16)
                                                    (i64.const 9221120237041090561)))))
                                            (local.tee $l5
                                              (select
                                                (select
                                                  (i32.const 2147483647)
                                                  (i32.const -2147483648)
                                                  (local.tee $p0
                                                    (f64.ge
                                                      (local.get $l21)
                                                      (f64.const -0x1p+31 (;=-2.14748e+09;)))))
                                                (i32.const 0)
                                                (f64.eq
                                                  (local.get $l21)
                                                  (local.get $l21))))
                                            (local.tee $l6
                                              (f64.le
                                                (local.get $l21)
                                                (f64.const 0x1.fffffffcp+30 (;=2.14748e+09;)))))
                                          (local.get $l5)
                                          (local.get $p0))))))))
                            (if $I20
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 4))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_*sync.Mutex_.Lock)
                                (drop
                                  (br_if $B5
                                    (i32.const 4)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I21
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (i32.store offset=132
                                  (local.get $l1)
                                  (local.get $p0))
                                (local.set $l6
                                  (i32.add
                                    (local.get $l1)
                                    (i32.const 136)))
                                (local.set $l2
                                  (i32.add
                                    (local.get $l1)
                                    (i32.const 132)))))
                            (if $I22
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 5))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $runtime.hashmapBinaryGet
                                  (i32.const 68084)
                                  (local.get $l2)
                                  (local.get $l6)
                                  (i32.const 8))
                                (drop
                                  (br_if $B5
                                    (i32.const 5)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))
                                (local.set $p0)))
                            (if $I23
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (local.set $l12
                                  (i32.load offset=136
                                    (local.get $l1)))
                                (local.set $l11
                                  (i32.load offset=140
                                    (local.get $l1)))))
                            (if $I24
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 6))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_*sync.Mutex_.Unlock)
                                (drop
                                  (br_if $B5
                                    (i32.const 6)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (local.set $l2
                              (select
                                (local.get $l2)
                                (i32.eqz
                                  (i32.and
                                    (local.get $p0)
                                    (i32.const 1)))
                                (global.get $g1)))
                            (block $B25
                              (if $I26
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (br_if $B25
                                    (local.get $l2))
                                  (local.set $l2
                                    (i32.add
                                      (local.get $l1)
                                      (i32.const 48)))))
                              (if $I27
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 7))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $_syscall/js.Value_.Get
                                    (local.get $l2)
                                    (local.get $l18)
                                    (local.get $l9)
                                    (i32.const 66356)
                                    (i32.const 4))
                                  (drop
                                    (br_if $B5
                                      (i32.const 7)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (if $I28
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (i32.store offset=184
                                    (local.get $l1)
                                    (local.tee $l14
                                      (i32.load offset=56
                                        (local.get $l1))))
                                  (local.set $l19
                                    (i64.load offset=48
                                      (local.get $l1)))
                                  (local.set $l2
                                    (i32.add
                                      (local.get $l1)
                                      (i32.const 32)))))
                              (if $I29
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 8))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $_syscall/js.Value_.Get
                                    (local.get $l2)
                                    (local.get $l18)
                                    (local.get $l9)
                                    (i32.const 66360)
                                    (i32.const 4))
                                  (drop
                                    (br_if $B5
                                      (i32.const 8)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (if $I30
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (i32.store offset=236
                                    (local.get $l1)
                                    (local.tee $l7
                                      (i32.load offset=40
                                        (local.get $l1))))
                                  (i32.store offset=220
                                    (local.get $l1)
                                    (local.get $l7))
                                  (i32.store offset=204
                                    (local.get $l1)
                                    (local.get $l7))
                                  (i32.store offset=192
                                    (local.get $l1)
                                    (local.get $l7))
                                  (i32.store offset=188
                                    (local.get $l1)
                                    (local.get $l7))
                                  (local.set $l16
                                    (i64.load offset=32
                                      (local.get $l1)))))
                              (if $I31
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 9))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $_syscall/js.Value_.Type
                                    (local.get $l16))
                                  (drop
                                    (br_if $B5
                                      (i32.const 9)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))
                                  (local.set $p0)))
                              (if $I32
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (br_if $B11
                                    (local.tee $l2
                                      (i32.ne
                                        (i32.and
                                          (local.get $p0)
                                          (i32.const -2))
                                        (i32.const 6))))))
                              (if $I33
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 10))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $syscall/js.valueLength
                                    (local.get $l16))
                                  (drop
                                    (br_if $B5
                                      (i32.const 10)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))
                                  (local.set $l8)))
                              (if $I34
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 11))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.alloc
                                    (i32.const 16))
                                  (drop
                                    (br_if $B5
                                      (i32.const 11)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))
                                  (local.set $p0)))
                              (if $I35
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (i64.store
                                    (local.get $p0)
                                    (local.get $l16))
                                  (i32.store offset=8
                                    (local.get $p0)
                                    (local.get $l7))
                                  (i32.store offset=208
                                    (local.get $l1)
                                    (local.get $p0))
                                  (i32.store offset=212
                                    (local.get $l1)
                                    (local.get $p0))
                                  (local.set $l2
                                    (i32.gt_u
                                      (local.get $l8)
                                      (i32.const 268435455)))))
                              (block $B36
                                (block $B37
                                  (if $I38
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B37
                                        (local.get $l2))
                                      (local.set $l2
                                        (i32.shl
                                          (local.get $l8)
                                          (i32.const 4)))))
                                  (if $I39
                                    (select
                                      (i32.eq
                                        (local.get $l4)
                                        (i32.const 12))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $runtime.alloc
                                        (local.get $l2))
                                      (drop
                                        (br_if $B5
                                          (i32.const 12)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))
                                      (local.set $l6)))
                                  (if $I40
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=216
                                        (local.get $l1)
                                        (local.get $l6))
                                      (local.set $l5
                                        (i32.const 0))
                                      (local.set $l2
                                        (local.get $l6))))
                                  (loop $L41
                                    (block $B42
                                      (if $I43
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (br_if $B42
                                            (local.tee $p0
                                              (i32.eq
                                                (local.get $l5)
                                                (local.get $l8))))))
                                      (if $I44
                                        (select
                                          (i32.eq
                                            (local.get $l4)
                                            (i32.const 13))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $_syscall/js.Value_.Type
                                            (local.get $l16))
                                          (drop
                                            (br_if $B5
                                              (i32.const 13)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))
                                          (local.set $p0)))
                                      (if $I45
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (br_if $B10
                                            (local.tee $l10
                                              (i32.ne
                                                (i32.and
                                                  (local.get $p0)
                                                  (i32.const -2))
                                                (i32.const 6))))
                                          (local.set $p0
                                            (i32.add
                                              (local.get $l1)
                                              (i32.const 16)))))
                                      (if $I46
                                        (select
                                          (i32.eq
                                            (local.get $l4)
                                            (i32.const 14))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $syscall/js.valueIndex
                                            (local.get $l16)
                                            (local.get $l5))
                                          (drop
                                            (br_if $B5
                                              (i32.const 14)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))
                                          (local.set $l17)))
                                      (if $I47
                                        (select
                                          (i32.eq
                                            (local.get $l4)
                                            (i32.const 15))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $syscall/js.makeValue
                                            (local.get $p0)
                                            (local.get $l17))
                                          (drop
                                            (br_if $B5
                                              (i32.const 15)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))))
                                      (if $I48
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i32.store offset=248
                                            (local.get $l1)
                                            (local.tee $l10
                                              (i32.load offset=24
                                                (local.get $l1))))
                                          (i32.store offset=232
                                            (local.get $l1)
                                            (local.get $l10))
                                          (local.set $l17
                                            (i64.load offset=16
                                              (local.get $l1)))))
                                      (if $I49
                                        (select
                                          (i32.eq
                                            (local.get $l4)
                                            (i32.const 16))
                                          (i32.const 1)
                                          (global.get $g1))
                                        (then
                                          (call $runtime.alloc
                                            (i32.const 16))
                                          (drop
                                            (br_if $B5
                                              (i32.const 16)
                                              (i32.eq
                                                (global.get $g1)
                                                (i32.const 1))))
                                          (local.set $p0)))
                                      (if $I50
                                        (i32.eqz
                                          (global.get $g1))
                                        (then
                                          (i64.store
                                            (local.get $p0)
                                            (local.get $l16))
                                          (i32.store offset=8
                                            (local.get $p0)
                                            (local.get $l7))
                                          (i32.store offset=240
                                            (local.get $l1)
                                            (local.get $p0))
                                          (i32.store offset=244
                                            (local.get $l1)
                                            (local.get $p0))
                                          (i32.store offset=8
                                            (local.get $l2)
                                            (local.get $l10))
                                          (i64.store
                                            (local.get $l2)
                                            (local.get $l17))
                                          (local.set $l2
                                            (i32.add
                                              (local.get $l2)
                                              (i32.const 16)))
                                          (local.set $l5
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 1)))
                                          (br $L41)))))
                                  (if $I51
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (br_if $B36
                                        (local.tee $l2
                                          (i32.eqz
                                            (local.get $l11))))
                                      (local.set $l2
                                        (i32.add
                                          (local.get $l1)
                                          (i32.const 8)))))
                                  (if $I52
                                    (select
                                      (i32.eq
                                        (local.get $l4)
                                        (i32.const 17))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call_indirect $T0 (type $t6)
                                        (local.get $l2)
                                        (local.get $l19)
                                        (local.get $l14)
                                        (local.get $l6)
                                        (local.get $l8)
                                        (local.get $l8)
                                        (local.get $l12)
                                        (local.get $l11))
                                      (drop
                                        (br_if $B5
                                          (i32.const 17)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (if $I53
                                    (i32.eqz
                                      (global.get $g1))
                                    (then
                                      (i32.store offset=256
                                        (local.get $l1)
                                        (local.tee $p0
                                          (i32.load offset=12
                                            (local.get $l1))))
                                      (i32.store offset=252
                                        (local.get $l1)
                                        (local.tee $l5
                                          (i32.load offset=8
                                            (local.get $l1))))))
                                  (if $I54
                                    (select
                                      (i32.eq
                                        (local.get $l4)
                                        (i32.const 18))
                                      (i32.const 1)
                                      (global.get $g1))
                                    (then
                                      (call $_syscall/js.Value_.Set
                                        (local.get $l18)
                                        (local.get $l9)
                                        (i32.const 66364)
                                        (i32.const 6)
                                        (local.get $l5)
                                        (local.get $p0))
                                      (drop
                                        (br_if $B5
                                          (i32.const 18)
                                          (i32.eq
                                            (global.get $g1)
                                            (i32.const 1))))))
                                  (br_if $B14
                                    (i32.eqz
                                      (global.get $g1))))
                                (if $I55
                                  (select
                                    (i32.eq
                                      (local.get $l4)
                                      (i32.const 19))
                                    (i32.const 1)
                                    (global.get $g1))
                                  (then
                                    (call $runtime.slicePanic)
                                    (drop
                                      (br_if $B5
                                        (i32.const 19)
                                        (i32.eq
                                          (global.get $g1)
                                          (i32.const 1))))))
                                (if $I56
                                  (i32.eqz
                                    (global.get $g1))
                                  (then
                                    (unreachable))))
                              (if $I57
                                (select
                                  (i32.eq
                                    (local.get $l4)
                                    (i32.const 20))
                                  (i32.const 1)
                                  (global.get $g1))
                                (then
                                  (call $runtime.nilPanic)
                                  (drop
                                    (br_if $B5
                                      (i32.const 20)
                                      (i32.eq
                                        (global.get $g1)
                                        (i32.const 1))))))
                              (if $I58
                                (i32.eqz
                                  (global.get $g1))
                                (then
                                  (unreachable))))
                            (local.set $l2
                              (select
                                (local.get $l2)
                                (i32.add
                                  (local.get $l1)
                                  (i32.const 80))
                                (global.get $g1)))
                            (if $I59
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 21))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_syscall/js.Value_.Get
                                  (local.get $l2)
                                  (i64.const 9221120241336057861)
                                  (i32.const 0)
                                  (i32.const 66370)
                                  (i32.const 7))
                                (drop
                                  (br_if $B5
                                    (i32.const 21)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (if $I60
                              (i32.eqz
                                (global.get $g1))
                              (then
                                (i32.store offset=140
                                  (local.get $l1)
                                  (i32.const 66408))
                                (i32.store offset=136
                                  (local.get $l1)
                                  (i32.const 67000))
                                (i32.store offset=260
                                  (local.get $l1)
                                  (local.tee $p0
                                    (i32.load offset=88
                                      (local.get $l1))))
                                (local.set $l16
                                  (i64.load offset=80
                                    (local.get $l1)))
                                (local.set $l6
                                  (i32.add
                                    (local.get $l1)
                                    (i32.const 136)))
                                (local.set $l2
                                  (i32.sub
                                    (local.get $l1)
                                    (i32.const -64)))))
                            (if $I61
                              (select
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const 22))
                                (i32.const 1)
                                (global.get $g1))
                              (then
                                (call $_syscall/js.Value_.Call
                                  (local.get $l2)
                                  (local.get $l16)
                                  (local.get $p0)
                                  (i32.const 66416)
                                  (i32.const 5)
                                  (local.get $l6)
                                  (i32.const 1))
                                (drop
                                  (br_if $B5
                                    (i32.const 22)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1)))))))
                          (if $I62
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (i32.store
                                (i32.const 68316)
                                (local.get $l13))
                              (global.set $__stack_pointer
                                (i32.add
                                  (local.get $l1)
                                  (i32.const 272)))
                              (br $B4))))
                        (if $I63
                          (select
                            (i32.eq
                              (local.get $l4)
                              (i32.const 23))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.alloc
                              (i32.const 12))
                            (drop
                              (br_if $B5
                                (i32.const 23)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))
                            (local.set $p0)))
                        (if $I64
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (i32.store offset=172
                              (local.get $l1)
                              (local.get $p0))
                            (i32.store offset=180
                              (local.get $l1)
                              (local.get $p0))))
                        (if $I65
                          (select
                            (i32.eq
                              (local.get $l4)
                              (i32.const 24))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $_syscall/js.Value_.Type
                              (local.get $l16))
                            (drop
                              (br_if $B5
                                (i32.const 24)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))
                            (local.set $l2)))
                        (if $I66
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (i32.store offset=8
                              (local.get $p0)
                              (local.get $l2))
                            (i32.store offset=4
                              (local.get $p0)
                              (i32.const 9))
                            (i32.store
                              (local.get $p0)
                              (i32.const 66604))))
                        (if $I67
                          (select
                            (i32.eq
                              (local.get $l4)
                              (i32.const 25))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime._panic
                              (i32.const 67924)
                              (local.get $p0))
                            (drop
                              (br_if $B5
                                (i32.const 25)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))))
                        (if $I68
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (unreachable))))
                      (if $I69
                        (select
                          (i32.eq
                            (local.get $l4)
                            (i32.const 26))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call $runtime.deadlock)
                          (drop
                            (br_if $B5
                              (i32.const 26)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (if $I70
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (unreachable))))
                    (if $I71
                      (select
                        (i32.eq
                          (local.get $l4)
                          (i32.const 27))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime.alloc
                          (i32.const 12))
                        (drop
                          (br_if $B5
                            (i32.const 27)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))
                        (local.set $l5)))
                    (if $I72
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (i32.store offset=8
                          (local.get $l5)
                          (local.get $p0))
                        (i32.store offset=4
                          (local.get $l5)
                          (i32.const 14))
                        (i32.store
                          (local.get $l5)
                          (i32.const 66613))
                        (i32.store offset=196
                          (local.get $l1)
                          (local.get $l5))
                        (i32.store offset=200
                          (local.get $l1)
                          (local.get $l5))))
                    (if $I73
                      (select
                        (i32.eq
                          (local.get $l4)
                          (i32.const 28))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime._panic
                          (i32.const 67924)
                          (local.get $l5))
                        (drop
                          (br_if $B5
                            (i32.const 28)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))))
                    (if $I74
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (unreachable))))
                  (if $I75
                    (select
                      (i32.eq
                        (local.get $l4)
                        (i32.const 29))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.alloc
                        (i32.const 12))
                      (drop
                        (br_if $B5
                          (i32.const 29)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $l5)))
                  (if $I76
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=8
                        (local.get $l5)
                        (local.get $p0))
                      (i32.store offset=4
                        (local.get $l5)
                        (i32.const 11))
                      (i32.store
                        (local.get $l5)
                        (i32.const 66593))
                      (i32.store offset=224
                        (local.get $l1)
                        (local.get $l5))
                      (i32.store offset=228
                        (local.get $l1)
                        (local.get $l5))))
                  (if $I77
                    (select
                      (i32.eq
                        (local.get $l4)
                        (i32.const 30))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime._panic
                        (i32.const 67924)
                        (local.get $l5))
                      (drop
                        (br_if $B5
                          (i32.const 30)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I78
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (unreachable)))
                  (br $B4)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l3))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l3
                  (i32.load
                    (global.get $g2)))
                (local.get $l1))
              (i32.store offset=4
                (local.get $l3)
                (local.get $l2))
              (i32.store offset=8
                (local.get $l3)
                (local.get $p0))
              (i32.store offset=12
                (local.get $l3)
                (local.get $l5))
              (i64.store offset=16 align=4
                (local.get $l3)
                (local.get $l16))
              (i32.store offset=24
                (local.get $l3)
                (local.get $l6))
              (i32.store offset=28
                (local.get $l3)
                (local.get $l7))
              (i32.store offset=32
                (local.get $l3)
                (local.get $l8))
              (i32.store offset=36
                (local.get $l3)
                (local.get $l9))
              (i64.store offset=40 align=4
                (local.get $l3)
                (local.get $l18))
              (i64.store offset=48 align=4
                (local.get $l3)
                (local.get $l17))
              (i32.store offset=56
                (local.get $l3)
                (local.get $l11))
              (i32.store offset=60
                (local.get $l3)
                (local.get $l10))
              (i32.store offset=64
                (local.get $l3)
                (local.get $l13))
              (i32.store offset=68
                (local.get $l3)
                (local.get $l12))
              (i32.store offset=72
                (local.get $l3)
                (local.get $l14))
              (i64.store offset=76 align=4
                (local.get $l3)
                (local.get $l19))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 84))))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I79
          (select
            (i32.eq
              (local.get $l15)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.deadlock)
            (drop
              (br_if $B0
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I80
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.runtimePanicAt (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 8)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l2
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (select
              (local.get $l2)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.printstring
              (i32.const 66100)
              (i32.const 22))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I4
          (select
            (i32.eq
              (local.get $l2)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.printstring
              (local.get $p0)
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (select
            (i32.eq
              (local.get $l2)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.printnl)
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I6
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 8))))
  (func $runtime.printstring (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 12)))
        (local.set $p0
          (i32.load
            (local.tee $l2
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l2)))
        (local.set $l2
          (i32.load offset=8
            (local.get $l2)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l3
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $p1
              (select
                (local.get $p1)
                (i32.const 0)
                (local.tee $l2
                  (i32.gt_s
                    (local.get $p1)
                    (i32.const 0)))))))
        (loop $L4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (i32.eqz
                    (local.get $p1)))
                (local.set $l2
                  (i32.load8_u
                    (local.get $p0)))))
            (if $I7
              (i32.eqz
                (select
                  (local.get $l3)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (call $runtime.putchar
                  (local.get $l2))
                (drop
                  (br_if $B1
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (local.set $p1
                  (i32.sub
                    (local.get $p1)
                    (i32.const 1)))
                (local.set $p0
                  (i32.add
                    (local.get $p0)
                    (i32.const 1)))
                (br $L4)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 12))))
  (func $runtime.printnl (type $t0)
    (local $l0 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I2
          (i32.eqz
            (select
              (if $I1 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.putchar
              (i32.const 10))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.putchar (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l2
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l1
              (i32.gt_u
                (local.tee $l3
                  (i32.load
                    (i32.const 68140)))
                (i32.const 119)))))
        (block $B3
          (if $I4
            (i32.eqz
              (global.get $g1))
            (then
              (br_if $B3
                (local.get $l1))
              (i32.store
                (i32.const 68140)
                (local.tee $l1
                  (i32.add
                    (local.get $l3)
                    (i32.const 1))))
              (i32.store8
                (i32.add
                  (local.get $l3)
                  (i32.const 68144))
                (local.get $p0))
              (local.set $p0
                (i32.eq
                  (i32.and
                    (local.get $p0)
                    (i32.const 255))
                  (i32.const 10)))))
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (i32.and
                    (i32.eqz
                      (local.get $p0))
                    (i32.ne
                      (local.get $l3)
                      (i32.const 119))))
                (i32.store
                  (i32.const 68036)
                  (local.get $l1))))
            (if $I7
              (i32.eqz
                (select
                  (local.get $l2)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (drop
                  (call $runtime.fd_write
                    (i32.const 1)
                    (i32.const 68032)
                    (i32.const 1)
                    (i32.const 68320)))
                (drop
                  (br_if $B0
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store
                  (i32.const 68140)
                  (i32.const 0)))))
          (if $I9
            (i32.eqz
              (global.get $g1))
            (then
              (return))))
        (if $I10
          (select
            (i32.eq
              (local.get $l2)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.lookupPanic)
            (drop
              (br_if $B0
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $runtime.deadlock (type $t0)
    (local $l0 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l0
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (select
              (local.get $l0)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $internal/task.Pause)
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I3
          (select
            (i32.eq
              (local.get $l0)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67000)
              (i32.const 66248))
            (drop
              (br_if $B0
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I4
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $_syscall/js.Value_.Get (type $t13) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i64) (local $l12 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 48)))
        (local.set $p0
          (i32.load
            (local.tee $l5
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=12
            (local.get $l5)))
        (local.set $p3
          (i32.load offset=16
            (local.get $l5)))
        (local.set $p4
          (i32.load offset=20
            (local.get $l5)))
        (local.set $l6
          (i32.load offset=24
            (local.get $l5)))
        (local.set $l11
          (i64.load offset=28 align=4
            (local.get $l5)))
        (local.set $l8
          (i32.load offset=36
            (local.get $l5)))
        (local.set $l9
          (i32.load offset=40
            (local.get $l5)))
        (local.set $l10
          (i32.load offset=44
            (local.get $l5)))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l5)))))
    (local.set $l5
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l7
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l6
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 48))))
            (i64.store
              (i32.add
                (local.get $l6)
                (i32.const 32))
              (i64.const 0))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 40))
              (i32.const 0))
            (i64.store offset=24
              (local.get $l6)
              (i64.const 0))
            (i32.store offset=20
              (local.get $l6)
              (i32.const 5))
            (local.set $l9
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l8
                (i32.add
                  (local.get $l6)
                  (i32.const 16))))
            (i32.store offset=16
              (local.get $l6)
              (local.get $l9))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l7)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Type
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l8)))
        (if $I5
          (select
            (global.get $g1)
            (i32.const 1)
            (select
              (local.get $l10)
              (i32.ne
                (i32.and
                  (local.get $l8)
                  (i32.const -2))
                (i32.const 6))
              (global.get $g1)))
          (then
            (if $I6
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $syscall/js.valueGet
                  (local.get $p1)
                  (local.get $p3)
                  (local.get $p4))
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l11)))
            (if $I7
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 2))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $syscall/js.makeValue
                  (local.get $l6)
                  (local.get $l11))
                (drop
                  (br_if $B1
                    (i32.const 2)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=24
                  (local.get $l6)
                  (local.tee $p3
                    (i32.load offset=8
                      (local.get $l6))))
                (local.set $l11
                  (i64.load
                    (local.get $l6)))))
            (if $I9
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 3))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (i32.const 16))
                (drop
                  (br_if $B1
                    (i32.const 3)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $p4)))
            (if $I10
              (i32.eqz
                (global.get $g1))
              (then
                (i64.store
                  (local.get $p4)
                  (local.get $p1))
                (i32.store offset=8
                  (local.get $p4)
                  (local.get $p2))
                (i32.store offset=28
                  (local.get $l6)
                  (local.get $p4))
                (i32.store offset=32
                  (local.get $l6)
                  (local.get $p4))
                (i32.store
                  (i32.const 68316)
                  (local.get $l9))
                (i32.store offset=8
                  (local.get $p0)
                  (local.get $p3))
                (i64.store
                  (local.get $p0)
                  (local.get $l11))
                (global.set $__stack_pointer
                  (i32.add
                    (local.get $l6)
                    (i32.const 48)))
                (return)))))
        (if $I11
          (select
            (i32.eq
              (local.get $l7)
              (i32.const 4))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 12))
            (drop
              (br_if $B1
                (i32.const 4)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p4)))
        (if $I12
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=8
              (local.get $p4)
              (local.get $l8))
            (i32.store offset=4
              (local.get $p4)
              (i32.const 9))
            (i32.store
              (local.get $p4)
              (i32.const 66584))
            (i32.store offset=36
              (local.get $l6)
              (local.get $p4))
            (i32.store offset=40
              (local.get $l6)
              (local.get $p4))))
        (if $I13
          (select
            (i32.eq
              (local.get $l7)
              (i32.const 5))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67924)
              (local.get $p4))
            (drop
              (br_if $B1
                (i32.const 5)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I14
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l5
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l5)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l5)
      (local.get $p3))
    (i32.store offset=20
      (local.get $l5)
      (local.get $p4))
    (i32.store offset=24
      (local.get $l5)
      (local.get $l6))
    (i64.store offset=28 align=4
      (local.get $l5)
      (local.get $l11))
    (i32.store offset=36
      (local.get $l5)
      (local.get $l8))
    (i32.store offset=40
      (local.get $l5)
      (local.get $l9))
    (i32.store offset=44
      (local.get $l5)
      (local.get $l10))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 48))))
  (func $_syscall/js.Value_.Set (type $t21) (param $p0 i64) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 52)))
        (local.set $p0
          (i64.load align=4
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=12
            (local.get $p1)))
        (local.set $p3
          (i32.load offset=16
            (local.get $p1)))
        (local.set $p4
          (i32.load offset=20
            (local.get $p1)))
        (local.set $p5
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l12
          (i64.load offset=36 align=4
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=44
            (local.get $p1)))
        (local.set $l11
          (i32.load offset=48
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=8
            (local.get $p1)))))
    (local.set $l7
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l9
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l6
                (i32.add
                  (global.get $__stack_pointer)
                  (i32.const -64))))
            (i64.store
              (i32.add
                (local.get $l6)
                (i32.const 40))
              (i64.const 0))
            (i64.store
              (i32.add
                (local.get $l6)
                (i32.const 48))
              (i64.const 0))
            (i64.store
              (i32.add
                (local.get $l6)
                (i32.const 56))
              (i64.const 0))
            (i64.store offset=32
              (local.get $l6)
              (i64.const 0))
            (i32.store offset=28
              (local.get $l6)
              (i32.const 8))
            (local.set $l10
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.tee $l8
                (i32.add
                  (local.get $l6)
                  (i32.const 24))))
            (i32.store offset=24
              (local.get $l6)
              (local.get $l10))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l9)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Type
              (local.get $p0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l8)))
        (local.set $l11
          (select
            (local.get $l11)
            (i32.ne
              (i32.and
                (local.get $l8)
                (i32.const -2))
              (i32.const 6))
            (global.get $g1)))
        (block $B5
          (if $I6
            (i32.eqz
              (global.get $g1))
            (then
              (br_if $B5
                (local.get $l11))
              (local.set $l8
                (i32.add
                  (local.get $l6)
                  (i32.const 8)))))
          (if $I7
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 1))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $syscall/js.ValueOf
                (local.get $l8)
                (local.get $p4)
                (local.get $p5))
              (drop
                (br_if $B1
                  (i32.const 1)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I8
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store offset=44
                (local.get $l6)
                (local.tee $p4
                  (i32.load offset=16
                    (local.get $l6))))
              (i32.store offset=32
                (local.get $l6)
                (local.get $p4))
              (local.set $l12
                (i64.load offset=8
                  (local.get $l6)))))
          (if $I9
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 2))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $syscall/js.valueSet
                (local.get $p0)
                (local.get $p2)
                (local.get $p3)
                (local.get $l12))
              (drop
                (br_if $B1
                  (i32.const 2)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I10
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 3))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.alloc
                (i32.const 16))
              (drop
                (br_if $B1
                  (i32.const 3)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))
              (local.set $p5)))
          (if $I11
            (i32.eqz
              (global.get $g1))
            (then
              (i64.store
                (local.get $p5)
                (local.get $p0))
              (i32.store offset=8
                (local.get $p5)
                (local.get $p1))
              (i32.store offset=36
                (local.get $l6)
                (local.get $p5))
              (i32.store offset=40
                (local.get $l6)
                (local.get $p5))))
          (if $I12
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 4))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.alloc
                (i32.const 16))
              (drop
                (br_if $B1
                  (i32.const 4)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))
              (local.set $p5)))
          (if $I13
            (i32.eqz
              (global.get $g1))
            (then
              (i64.store
                (local.get $p5)
                (local.get $l12))
              (i32.store offset=8
                (local.get $p5)
                (local.get $p4))
              (i32.store offset=48
                (local.get $l6)
                (local.get $p5))
              (i32.store offset=52
                (local.get $l6)
                (local.get $p5))
              (i32.store
                (i32.const 68316)
                (local.get $l10))
              (global.set $__stack_pointer
                (i32.sub
                  (local.get $l6)
                  (i32.const -64)))
              (return))))
        (if $I14
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 5))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 12))
            (drop
              (br_if $B1
                (i32.const 5)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p5)))
        (if $I15
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=8
              (local.get $p5)
              (local.get $l8))
            (i32.store offset=4
              (local.get $p5)
              (i32.const 9))
            (i32.store
              (local.get $p5)
              (i32.const 66639))
            (i32.store offset=56
              (local.get $l6)
              (local.get $p5))
            (i32.store offset=60
              (local.get $l6)
              (local.get $p5))))
        (if $I16
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 6))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67924)
              (local.get $p5))
            (drop
              (br_if $B1
                (i32.const 6)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I17
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (local.tee $l7
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l7)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l7)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l7)
      (local.get $p3))
    (i32.store offset=20
      (local.get $l7)
      (local.get $p4))
    (i32.store offset=24
      (local.get $l7)
      (local.get $p5))
    (i32.store offset=28
      (local.get $l7)
      (local.get $l6))
    (i32.store offset=32
      (local.get $l7)
      (local.get $l8))
    (i64.store offset=36 align=4
      (local.get $l7)
      (local.get $l12))
    (i32.store offset=44
      (local.get $l7)
      (local.get $l10))
    (i32.store offset=48
      (local.get $l7)
      (local.get $l11))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 52))))
  (func $_syscall/js.Value_.isNumber (type $t5) (param $p0 i64) (result i32)
    (local $l1 i32)
    (local.set $l1
      (i32.const 1))
    (block $B0
      (return
        (if $I1 (result i32)
          (i64.ge_u
            (i64.sub
              (local.get $p0)
              (i64.const 9221120237041090560))
            (i64.const 2))
          (then
            (br_if $B0
              (i64.ne
                (local.get $p0)
                (i64.const 0)))
            (i32.const 0))
          (else
            (i32.const 1)))))
    (i64.ne
      (i64.and
        (local.get $p0)
        (i64.const 9221120237041090560))
      (i64.const 9221120237041090560)))
  (func $_*sync.Mutex_.Lock (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l0
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l1
              (i32.eqz
                (i32.load8_u
                  (i32.const 68640))))))
        (block $B3
          (block $B4
            (if $I5
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B4
                  (local.get $l1))
                (local.set $l2
                  (i32.load
                    (i32.const 68644)))
                (i32.store
                  (i32.const 68644)
                  (local.tee $l1
                    (i32.load
                      (i32.const 68132))))
                (br_if $B3
                  (i32.eqz
                    (local.get $l1)))
                (i32.store
                  (local.get $l1)
                  (local.get $l2))))
            (if $I6
              (i32.eqz
                (select
                  (local.get $l0)
                  (i32.const 0)
                  (global.get $g1)))
              (then
                (call $internal/task.Pause)
                (drop
                  (br_if $B0
                    (i32.const 0)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I7
              (i32.eqz
                (global.get $g1))
              (then
                (return))))
          (if $I8
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store8
                (i32.const 68640)
                (i32.const 1))
              (return))))
        (if $I9
          (select
            (i32.eq
              (local.get $l0)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.nilPanic)
            (drop
              (br_if $B0
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I10
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $_*sync.Mutex_.Unlock (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 12)))
        (local.set $l0
          (i32.load
            (local.tee $l2
              (i32.load
                (global.get $g2)))))
        (local.set $l1
          (i32.load offset=4
            (local.get $l2)))
        (local.set $l2
          (i32.load offset=8
            (local.get $l2)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l3
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l0
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i64.store offset=20 align=4
              (local.get $l0)
              (i64.const 0))
            (i64.store offset=12 align=4
              (local.get $l0)
              (i64.const 3))
            (local.set $l2
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l0)
                (i32.const 8)))
            (i32.store offset=8
              (local.get $l0)
              (local.get $l2))
            (local.set $l1
              (i32.eqz
                (i32.load8_u
                  (i32.const 68640))))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l1))
                (i32.store offset=24
                  (local.get $l0)
                  (local.tee $l1
                    (i32.load
                      (i32.const 68644))))
                (i32.store offset=16
                  (local.get $l0)
                  (local.get $l1))
                (local.set $l4
                  (i32.eqz
                    (local.get $l1)))))
            (block $B7
              (if $I8
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B7
                    (local.get $l4))
                  (i32.store
                    (i32.const 68644)
                    (local.tee $l4
                      (i32.load
                        (local.get $l1))))
                  (i32.store offset=20
                    (local.get $l0)
                    (local.get $l4))
                  (i32.store
                    (local.get $l1)
                    (i32.const 0))))
              (if $I9
                (i32.eqz
                  (select
                    (local.get $l3)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call $_*internal/task.Queue_.Push
                    (local.get $l1))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (br_if $B4
                (i32.eqz
                  (global.get $g1))))
            (if $I10
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store8
                  (i32.const 68640)
                  (i32.const 0))
                (br $B4))))
          (if $I11
            (select
              (i32.eq
                (local.get $l3)
                (i32.const 1))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime._panic
                (i32.const 67000)
                (i32.const 66288))
              (drop
                (br_if $B1
                  (i32.const 1)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I12
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I13
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l2))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l0)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $l0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $l1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 12))))
  (func $_syscall/js.Value_.Type (type $t5) (param $p0 i64) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 12)))
        (local.set $p0
          (i64.load align=4
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l1
          (i32.load offset=8
            (local.get $l1)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l2
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (if $I4
              (i64.eqz
                (local.get $p0))
              (then
                (return
                  (i32.const 0))))
            (if $I5
              (i64.eq
                (local.get $p0)
                (i64.const 9221120237041090562))
              (then
                (return
                  (i32.const 1))))
            (local.set $l3
              (i64.lt_u
                (i64.sub
                  (local.get $p0)
                  (i64.const 9221120237041090563))
                (i64.const 2)))
            (local.set $l1
              (i32.const 2))))
        (block $B6
          (if $I7
            (i32.eqz
              (global.get $g1))
            (then
              (br_if $B6
                (local.get $l3))
              (local.set $l1
                (i32.const 3))
              (br_if $B6
                (i32.and
                  (call $_syscall/js.Value_.isNumber
                    (local.get $p0))
                  (i32.const 1)))
              (local.set $l1
                (i64.lt_u
                  (local.tee $p0
                    (i64.sub
                      (i64.and
                        (i64.shr_u
                          (local.get $p0)
                          (i64.const 32))
                        (i64.const 7))
                      (i64.const 1)))
                  (i64.const 4)))))
          (if $I8
            (select
              (global.get $g1)
              (i32.const 1)
              (local.get $l1))
            (then
              (if $I9
                (i32.eqz
                  (select
                    (local.get $l2)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call $runtime._panic
                    (i32.const 67000)
                    (i32.const 66728))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I10
                (i32.eqz
                  (global.get $g1))
                (then
                  (unreachable)))))
          (if $I11
            (i32.eqz
              (global.get $g1))
            (then
              (local.set $l1
                (i32.load
                  (i32.add
                    (i32.shl
                      (i32.wrap_i64
                        (local.get $p0))
                      (i32.const 2))
                    (i32.const 68012)))))))
        (if $I12
          (i32.eqz
            (global.get $g1))
          (then
            (return
              (local.get $l1))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l2)
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 12)))
    (i32.const 0))
  (func $syscall/js.makeValue (type $t11) (param $p0 i32) (param $p1 i64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 24)))
        (local.set $p0
          (i32.load
            (local.tee $l3
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l3)))
        (local.set $l4
          (i32.load offset=12
            (local.get $l3)))
        (local.set $l5
          (i32.load offset=16
            (local.get $l3)))
        (local.set $l3
          (i32.load offset=20
            (local.get $l3)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l6
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l5
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (local.set $l3
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l5)
                (i32.const 8)))
            (local.set $l4
              (i32.const 0))
            (local.set $l2
              (i64.ne
                (i64.and
                  (local.get $p1)
                  (i64.const 9221120237041090560))
                (i64.const 9221120237041090560)))))
        (block $B4
          (if $I5
            (i32.eqz
              (global.get $g1))
            (then
              (br_if $B4
                (local.get $l2))
              (local.set $l4
                (i32.const 0))
              (br_if $B4
                (i64.eqz
                  (i64.and
                    (local.get $p1)
                    (i64.const 30064771072))))))
          (if $I6
            (i32.eqz
              (select
                (local.get $l6)
                (i32.const 0)
                (global.get $g1)))
            (then
              (call $runtime.alloc
                (i32.const 8))
              (drop
                (br_if $B1
                  (i32.const 0)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))
              (local.set $l4)))
          (if $I7
            (i32.eqz
              (global.get $g1))
            (then
              (i64.store
                (local.get $l4)
                (local.get $p1)))))
        (if $I8
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l3))
            (i32.store offset=8
              (local.get $p0)
              (local.get $l4))
            (i64.store
              (local.get $p0)
              (local.get $p1))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l5)
                (i32.const 32)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l2)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l2)
      (local.get $l4))
    (i32.store offset=16
      (local.get $l2)
      (local.get $l5))
    (i32.store offset=20
      (local.get $l2)
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 24))))
  (func $_syscall/js.Value_.Call (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i64) (local $l15 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 68)))
        (local.set $p0
          (i32.load
            (local.tee $l8
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=12
            (local.get $l8)))
        (local.set $p3
          (i32.load offset=16
            (local.get $l8)))
        (local.set $p4
          (i32.load offset=20
            (local.get $l8)))
        (local.set $p5
          (i32.load offset=24
            (local.get $l8)))
        (local.set $p6
          (i32.load offset=28
            (local.get $l8)))
        (local.set $l7
          (i32.load offset=32
            (local.get $l8)))
        (local.set $l10
          (i32.load offset=36
            (local.get $l8)))
        (local.set $l14
          (i64.load offset=40 align=4
            (local.get $l8)))
        (local.set $l11
          (i32.load offset=48
            (local.get $l8)))
        (local.set $l15
          (i64.load offset=52 align=4
            (local.get $l8)))
        (local.set $l12
          (i32.load offset=60
            (local.get $l8)))
        (local.set $l13
          (i32.load offset=64
            (local.get $l8)))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l8)))))
    (local.set $l8
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l9
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l7
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 224))))
            (i32.store offset=124
              (local.get $l7)
              (i32.const 23))
            (memory.fill
              (i32.add
                (local.get $l7)
                (i32.const 128))
              (i32.const 0)
              (i32.const 92))
            (i32.store offset=120
              (local.get $l7)
              (local.tee $l11
                (i32.load
                  (i32.const 68316))))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l7)
                (i32.const 120)))
            (local.set $l10
              (i32.add
                (local.get $l7)
                (i32.const 96)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l9)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $syscall/js.makeArgs
              (local.get $l10)
              (local.get $p5)
              (local.get $p6))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=132
              (local.get $l7)
              (local.tee $p6
                (i32.load offset=108
                  (local.get $l7))))
            (i32.store offset=128
              (local.get $l7)
              (local.tee $p5
                (i32.load offset=96
                  (local.get $l7))))
            (local.set $l15
              (i64.load offset=100 align=4
                (local.get $l7)))
            (local.set $l12
              (i32.load offset=112
                (local.get $l7)))
            (local.set $l13
              (i32.load offset=116
                (local.get $l7)))
            (local.set $l10
              (i32.add
                (local.get $l7)
                (i32.const 80)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $syscall/js.valueCall
              (local.get $l10)
              (local.get $p1)
              (local.get $p3)
              (local.get $p4)
              (local.get $p6)
              (local.get $l12)
              (local.get $l13))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=164
              (local.get $l7)
              (local.get $p2))
            (i32.store offset=160
              (local.get $l7)
              (local.get $p2))
            (i32.store offset=136
              (local.get $l7)
              (local.get $p2))
            (local.set $l14
              (i64.load offset=80
                (local.get $l7)))
            (local.set $l10
              (i32.load8_u offset=88
                (local.get $l7)))))
        (if $I8
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 16))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p6)))
        (if $I9
          (i32.eqz
            (global.get $g1))
          (then
            (i64.store
              (local.get $p6)
              (local.get $p1))
            (i32.store offset=8
              (local.get $p6)
              (local.get $p2))
            (i32.store offset=140
              (local.get $l7)
              (local.get $p6))
            (i32.store offset=144
              (local.get $l7)
              (local.get $p6))))
        (if $I10
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 3))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 12))
            (drop
              (br_if $B1
                (i32.const 3)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p6)))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (i64.store offset=4 align=4
              (local.get $p6)
              (local.get $l15))
            (i32.store
              (local.get $p6)
              (local.get $p5))
            (i32.store offset=148
              (local.get $l7)
              (local.get $p6))
            (i32.store offset=152
              (local.get $l7)
              (local.get $p6))))
        (block $B12
          (if $I13
            (select
              (global.get $g1)
              (i32.const 1)
              (local.get $l10))
            (then
              (if $I14
                (select
                  (i32.eq
                    (local.get $l9)
                    (i32.const 4))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $_syscall/js.Value_.Type
                    (local.get $p1))
                  (drop
                    (br_if $B1
                      (i32.const 4)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p6)))
              (local.set $p0
                (select
                  (local.get $p0)
                  (i32.ne
                    (i32.and
                      (local.get $p6)
                      (i32.const -2))
                    (i32.const 6))
                  (global.get $g1)))
              (block $B15
                (if $I16
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (br_if $B15
                      (local.get $p0))
                    (local.set $p0
                      (i32.sub
                        (local.get $l7)
                        (i32.const -64)))))
                (if $I17
                  (select
                    (i32.eq
                      (local.get $l9)
                      (i32.const 5))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $_syscall/js.Value_.Get
                      (local.get $p0)
                      (local.get $p1)
                      (local.get $p2)
                      (local.get $p3)
                      (local.get $p4))
                    (drop
                      (br_if $B1
                        (i32.const 5)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I18
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=168
                      (local.get $l7)
                      (local.tee $p0
                        (i32.load offset=72
                          (local.get $l7))))
                    (local.set $p1
                      (i64.load offset=64
                        (local.get $l7)))))
                (if $I19
                  (select
                    (i32.eq
                      (local.get $l9)
                      (i32.const 6))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $_syscall/js.Value_.Type
                      (local.get $p1))
                    (drop
                      (br_if $B1
                        (i32.const 6)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))
                    (local.set $p2)))
                (if $I20
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (br_if $B12
                      (local.tee $p0
                        (i32.ne
                          (local.get $p2)
                          (i32.const 7))))
                    (local.set $p0
                      (i32.add
                        (local.get $l7)
                        (i32.const 16)))))
                (if $I21
                  (select
                    (i32.eq
                      (local.get $l9)
                      (i32.const 7))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $syscall/js.makeValue
                      (local.get $p0)
                      (local.get $l14))
                    (drop
                      (br_if $B1
                        (i32.const 7)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I22
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=200
                      (local.get $l7)
                      (local.tee $p6
                        (i32.load offset=24
                          (local.get $l7))))
                    (i32.store offset=196
                      (local.get $l7)
                      (local.get $p6))
                    (local.set $p1
                      (i64.load offset=16
                        (local.get $l7)))))
                (if $I23
                  (select
                    (i32.eq
                      (local.get $l9)
                      (i32.const 8))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.alloc
                      (i32.const 16))
                    (drop
                      (br_if $B1
                        (i32.const 8)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))
                    (local.set $p2)))
                (if $I24
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i64.store
                      (local.get $p2)
                      (local.get $p1))
                    (i32.store offset=8
                      (local.get $p2)
                      (local.get $p6))
                    (i32.store offset=204
                      (local.get $l7)
                      (local.get $p2))
                    (i32.store offset=208
                      (local.get $l7)
                      (local.get $p2))))
                (if $I25
                  (select
                    (i32.eq
                      (local.get $l9)
                      (i32.const 9))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime._panic
                      (i32.const 67764)
                      (local.get $p2))
                    (drop
                      (br_if $B1
                        (i32.const 9)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I26
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (unreachable))))
              (if $I27
                (select
                  (i32.eq
                    (local.get $l9)
                    (i32.const 10))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (i32.const 12))
                  (drop
                    (br_if $B1
                      (i32.const 10)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p2)))
              (if $I28
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=8
                    (local.get $p2)
                    (local.get $p6))
                  (i32.store offset=4
                    (local.get $p2)
                    (i32.const 10))
                  (i32.store
                    (local.get $p2)
                    (i32.const 66574))
                  (i32.store offset=212
                    (local.get $l7)
                    (local.get $p2))
                  (i32.store offset=216
                    (local.get $l7)
                    (local.get $p2))))
              (if $I29
                (select
                  (i32.eq
                    (local.get $l9)
                    (i32.const 11))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime._panic
                    (i32.const 67924)
                    (local.get $p2))
                  (drop
                    (br_if $B1
                      (i32.const 11)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I30
                (i32.eqz
                  (global.get $g1))
                (then
                  (unreachable)))))
          (if $I31
            (select
              (i32.eq
                (local.get $l9)
                (i32.const 12))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $syscall/js.makeValue
                (local.get $l7)
                (local.get $l14))
              (drop
                (br_if $B1
                  (i32.const 12)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I32
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store
                (i32.const 68316)
                (local.get $l11))
              (local.set $p1
                (i64.load
                  (local.get $l7)))
              (i32.store offset=8
                (local.get $p0)
                (i32.load offset=8
                  (local.get $l7)))
              (i64.store
                (local.get $p0)
                (local.get $p1))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l7)
                  (i32.const 224)))
              (return))))
        (local.set $p0
          (select
            (local.get $p0)
            (i32.add
              (local.get $l7)
              (i32.const 56))
            (global.get $g1)))
        (if $I33
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 13))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.stringConcat
              (local.get $p0)
              (i32.const 66517)
              (i32.const 33)
              (local.get $p3)
              (local.get $p4))
            (drop
              (br_if $B1
                (i32.const 13)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I34
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=172
              (local.get $l7)
              (local.tee $p6
                (i32.load offset=56
                  (local.get $l7))))
            (local.set $p3
              (i32.load offset=60
                (local.get $l7)))
            (local.set $p0
              (i32.add
                (local.get $l7)
                (i32.const 48)))))
        (if $I35
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 14))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.stringConcat
              (local.get $p0)
              (local.get $p6)
              (local.get $p3)
              (i32.const 66550)
              (i32.const 24))
            (drop
              (br_if $B1
                (i32.const 14)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I36
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=176
              (local.get $l7)
              (local.tee $p6
                (i32.load offset=48
                  (local.get $l7))))
            (local.set $p3
              (i32.add
                (local.get $l7)
                (i32.const 40)))
            (local.set $p0
              (i32.load offset=52
                (local.get $l7)))))
        (if $I37
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 15))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Type_.String
              (local.get $p3)
              (local.get $p2))
            (drop
              (br_if $B1
                (i32.const 15)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I38
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=180
              (local.get $l7)
              (local.tee $p2
                (i32.load offset=40
                  (local.get $l7))))
            (local.set $p4
              (i32.load offset=44
                (local.get $l7)))
            (local.set $p3
              (i32.add
                (local.get $l7)
                (i32.const 32)))))
        (if $I39
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 16))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.stringConcat
              (local.get $p3)
              (local.get $p6)
              (local.get $p0)
              (local.get $p2)
              (local.get $p4))
            (drop
              (br_if $B1
                (i32.const 16)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I40
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=184
              (local.get $l7)
              (local.tee $p6
                (i32.load offset=32
                  (local.get $l7))))
            (local.set $p0
              (i32.load offset=36
                (local.get $l7)))))
        (if $I41
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 17))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 8))
            (drop
              (br_if $B1
                (i32.const 17)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p2)))
        (if $I42
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=4
              (local.get $p2)
              (local.get $p0))
            (i32.store
              (local.get $p2)
              (local.get $p6))
            (i32.store offset=188
              (local.get $l7)
              (local.get $p2))
            (i32.store offset=192
              (local.get $l7)
              (local.get $p2))))
        (if $I43
          (select
            (i32.eq
              (local.get $l9)
              (i32.const 18))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67000)
              (local.get $p2))
            (drop
              (br_if $B1
                (i32.const 18)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I44
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l8))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l8
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l8)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l8)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l8)
      (local.get $p3))
    (i32.store offset=20
      (local.get $l8)
      (local.get $p4))
    (i32.store offset=24
      (local.get $l8)
      (local.get $p5))
    (i32.store offset=28
      (local.get $l8)
      (local.get $p6))
    (i32.store offset=32
      (local.get $l8)
      (local.get $l7))
    (i32.store offset=36
      (local.get $l8)
      (local.get $l10))
    (i64.store offset=40 align=4
      (local.get $l8)
      (local.get $l14))
    (i32.store offset=48
      (local.get $l8)
      (local.get $l11))
    (i64.store offset=52 align=4
      (local.get $l8)
      (local.get $l15))
    (i32.store offset=60
      (local.get $l8)
      (local.get $l12))
    (i32.store offset=64
      (local.get $l8)
      (local.get $l13))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 68))))
  (func $runtime.printuint32 (type $t1) (param $p0 i32)
    (local $l1 i64)
    (local.set $p0
      (block $B0 (result i32)
        (local.set $l1
          (select
            (if $I1 (result i64)
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 8)))
                (i64.load align=4
                  (i32.load
                    (global.get $g2))))
              (else
                (i64.const 0)))
            (i64.extend_i32_u
              (local.get $p0))
            (global.get $g1)))
        (if $I3
          (i32.eqz
            (select
              (if $I2 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.printuint64
              (local.get $l1))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (i32.load
        (global.get $g2))
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 8))))
  (func $runtime.printuint64 (type $t12) (param $p0 i64)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 24)))
        (local.set $p0
          (i64.load align=4
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=8
            (local.get $l1)))
        (local.set $l3
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l4
          (i32.load offset=16
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=20
            (local.get $l1)))))
    (local.set $l5
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l5
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l1
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 32))))
            (i32.store
              (i32.add
                (local.get $l1)
                (i32.const 24))
              (i32.const 0))
            (i64.store
              (i32.add
                (local.get $l1)
                (i32.const 16))
              (i64.const 0))
            (i64.store offset=8
              (local.get $l1)
              (i64.const 0))
            (local.set $l3
              (i32.const 19))
            (local.set $l2
              (i32.const 19))))
        (loop $L4
          (local.set $l4
            (select
              (local.get $l4)
              (i32.ge_s
                (local.get $l3)
                (i32.const 0))
              (global.get $g1)))
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l4))
                (local.set $l3
                  (i32.sub
                    (select
                      (i32.const 20)
                      (local.get $l2)
                      (i32.le_s
                        (local.get $l2)
                        (i32.const 20)))
                    (local.get $l2)))
                (local.set $l2
                  (i32.add
                    (local.tee $l4
                      (i32.add
                        (local.get $l1)
                        (i32.const 8)))
                    (local.get $l2)))))
            (loop $L7
              (block $B8
                (if $I9
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (br_if $B8
                      (i32.eqz
                        (local.get $l3)))
                    (local.set $l4
                      (i32.load8_u
                        (local.get $l2)))))
                (if $I10
                  (i32.eqz
                    (select
                      (local.get $l5)
                      (i32.const 0)
                      (global.get $g1)))
                  (then
                    (call $runtime.putchar
                      (local.get $l4))
                    (drop
                      (br_if $B1
                        (i32.const 0)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I11
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (local.set $l3
                      (i32.sub
                        (local.get $l3)
                        (i32.const 1)))
                    (local.set $l2
                      (i32.add
                        (local.get $l2)
                        (i32.const 1)))
                    (br $L7)))))
            (if $I12
              (i32.eqz
                (global.get $g1))
              (then
                (global.set $__stack_pointer
                  (i32.add
                    (local.get $l1)
                    (i32.const 32)))
                (return))))
          (if $I13
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store8
                (i32.add
                  (local.get $l3)
                  (i32.add
                    (local.get $l1)
                    (i32.const 8)))
                (local.tee $l4
                  (i32.or
                    (i32.wrap_i64
                      (i64.add
                        (local.get $p0)
                        (i64.mul
                          (local.tee $p0
                            (i64.div_u
                              (local.get $p0)
                              (i64.const 10)))
                          (i64.const 246))))
                    (i32.const 48))))
              (local.set $l2
                (select
                  (local.get $l2)
                  (local.get $l3)
                  (local.tee $l4
                    (i32.eq
                      (i32.and
                        (local.get $l4)
                        (i32.const 255))
                      (i32.const 48)))))
              (local.set $l3
                (i32.sub
                  (local.get $l3)
                  (i32.const 1)))
              (br $L4))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (local.tee $l5
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l5)
      (local.get $l2))
    (i32.store offset=12
      (local.get $l5)
      (local.get $l3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l5)
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 24))))
  (func $_syscall/js.Type_.String (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l2
              (i32.const 9))
            (local.set $l3
              (i32.const 66792))
            (block $B3
              (block $B4
                (block $B5
                  (block $B6
                    (block $B7
                      (block $B8
                        (block $B9
                          (block $B10
                            (block $B11
                              (br_table $B4 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B3
                                (local.get $p1)))
                            (local.set $l2
                              (i32.const 4))
                            (local.set $l3
                              (i32.const 66801))
                            (br $B4))
                          (local.set $l2
                            (i32.const 7))
                          (local.set $l3
                            (i32.const 66805))
                          (br $B4))
                        (local.set $l2
                          (i32.const 6))
                        (local.set $l3
                          (i32.const 66812))
                        (br $B4))
                      (local.set $l2
                        (i32.const 6))
                      (local.set $l3
                        (i32.const 66818))
                      (br $B4))
                    (local.set $l2
                      (i32.const 6))
                    (local.set $l3
                      (i32.const 66824))
                    (br $B4))
                  (local.set $l2
                    (i32.const 6))
                  (local.set $l3
                    (i32.const 66830))
                  (br $B4))
                (local.set $l2
                  (i32.const 8))
                (local.set $l3
                  (i32.const 66836)))
              (i32.store
                (local.get $p0)
                (local.get $l3))
              (i32.store offset=4
                (local.get $p0)
                (local.get $l2))
              (return))))
        (if $I12
          (i32.eqz
            (select
              (local.get $l4)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime._panic
              (i32.const 67000)
              (i32.const 66856))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I13
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $_syscall/js.Error_.Error (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 32)))
        (local.set $p0
          (i32.load
            (local.tee $l5
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l5)))
        (local.set $p2
          (i32.load offset=12
            (local.get $l5)))
        (local.set $l3
          (i32.load offset=16
            (local.get $l5)))
        (local.set $l6
          (i32.load offset=20
            (local.get $l5)))
        (local.set $l7
          (i32.load offset=24
            (local.get $l5)))
        (local.set $l5
          (i32.load offset=28
            (local.get $l5)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l3
                (i32.add
                  (global.get $__stack_pointer)
                  (i32.const -64))))
            (i64.store offset=52 align=4
              (local.get $l3)
              (i64.const 0))
            (i32.store offset=44
              (local.get $l3)
              (i32.const 3))
            (local.set $l7
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l3)
                (i32.const 40)))
            (i32.store offset=40
              (local.get $l3)
              (local.get $l7))
            (local.set $l6
              (i32.add
                (local.get $l3)
                (i32.const 24)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l4)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Get
              (local.get $l6)
              (local.get $p1)
              (local.get $p2)
              (i32.const 66736)
              (i32.const 7))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=48
              (local.get $l3)
              (local.tee $p2
                (i32.load offset=32
                  (local.get $l3))))
            (local.set $l6
              (i32.add
                (local.get $l3)
                (i32.const 16)))
            (local.set $p1
              (i64.load offset=24
                (local.get $l3)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.String
              (local.get $l6)
              (local.get $p1)
              (local.get $p2))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=52
              (local.get $l3)
              (local.tee $p2
                (i32.load offset=16
                  (local.get $l3))))
            (local.set $l6
              (i32.add
                (local.get $l3)
                (i32.const 8)))
            (local.set $l5
              (i32.load offset=20
                (local.get $l3)))))
        (if $I8
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.stringConcat
              (local.get $l6)
              (i32.const 66743)
              (i32.const 18)
              (local.get $p2)
              (local.get $l5))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I9
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l7))
            (local.set $p2
              (i32.load offset=12
                (local.get $l3)))
            (i32.store
              (local.get $p0)
              (i32.load offset=8
                (local.get $l3)))
            (i32.store offset=4
              (local.get $p0)
              (local.get $p2))
            (global.set $__stack_pointer
              (i32.sub
                (local.get $l3)
                (i32.const -64)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l4)
      (local.get $l3))
    (i32.store offset=20
      (local.get $l4)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l4)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l4)
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 32))))
  (func $_syscall/js.Value_.String (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 36)))
        (local.set $p0
          (i32.load
            (local.tee $l6
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l6)))
        (local.set $p2
          (i32.load offset=12
            (local.get $l6)))
        (local.set $l3
          (i32.load offset=16
            (local.get $l6)))
        (local.set $l4
          (i32.load offset=20
            (local.get $l6)))
        (local.set $l5
          (i32.load offset=24
            (local.get $l6)))
        (local.set $l9
          (i32.load offset=28
            (local.get $l6)))
        (local.set $l6
          (i32.load offset=32
            (local.get $l6)))))
    (local.set $l7
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l8
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l3
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 96))))
            (i64.store
              (i32.add
                (local.get $l3)
                (i32.const 72))
              (i64.const 0))
            (i64.store
              (i32.add
                (local.get $l3)
                (i32.const 80))
              (i64.const 0))
            (i32.store
              (i32.add
                (local.get $l3)
                (i32.const 88))
              (i32.const 0))
            (i64.store offset=64
              (local.get $l3)
              (i64.const 0))
            (i32.store offset=60
              (local.get $l3)
              (i32.const 7))
            (local.set $l9
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l3)
                (i32.const 56)))
            (i32.store offset=56
              (local.get $l3)
              (local.get $l9))
            (local.set $l5
              (i32.const 66648))
            (local.set $l4
              (i32.const 11))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l8)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Type
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l6)))
        (block $B5
          (block $B6
            (block $B7
              (block $B8
                (block $B9
                  (block $B10
                    (block $B11
                      (if $I12
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (block $B13
                            (br_table $B11 $B10 $B9 $B13 $B8 $B7 $B6 $B5
                              (i32.sub
                                (local.get $l6)
                                (i32.const 1))))))
                      (if $I14
                        (select
                          (i32.eq
                            (local.get $l8)
                            (i32.const 1))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call $syscall/js.jsString
                            (local.get $l3)
                            (local.get $p1)
                            (local.get $p2))
                          (drop
                            (br_if $B1
                              (i32.const 1)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (if $I15
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (local.set $l4
                            (i32.load offset=4
                              (local.get $l3)))
                          (local.set $l5
                            (i32.load
                              (local.get $l3)))
                          (br $B5))))
                    (if $I16
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (local.set $l4
                          (i32.const 6))
                        (local.set $l5
                          (i32.const 66659))
                        (br $B5))))
                  (local.set $l4
                    (select
                      (local.get $l4)
                      (i32.add
                        (local.get $l3)
                        (i32.const 24))
                      (global.get $g1)))
                  (if $I17
                    (select
                      (i32.eq
                        (local.get $l8)
                        (i32.const 2))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $syscall/js.jsString
                        (local.get $l4)
                        (local.get $p1)
                        (local.get $p2))
                      (drop
                        (br_if $B1
                          (i32.const 2)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I18
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=68
                        (local.get $l3)
                        (local.tee $l4
                          (i32.load offset=24
                            (local.get $l3))))
                      (local.set $l5
                        (i32.load offset=28
                          (local.get $l3)))
                      (local.set $p2
                        (i32.add
                          (local.get $l3)
                          (i32.const 16)))))
                  (if $I19
                    (select
                      (i32.eq
                        (local.get $l8)
                        (i32.const 3))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.stringConcat
                        (local.get $p2)
                        (i32.const 66665)
                        (i32.const 10)
                        (local.get $l4)
                        (local.get $l5))
                      (drop
                        (br_if $B1
                          (i32.const 3)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I20
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=72
                        (local.get $l3)
                        (local.tee $l4
                          (i32.load offset=16
                            (local.get $l3))))
                      (local.set $l5
                        (i32.load offset=20
                          (local.get $l3)))
                      (local.set $p2
                        (i32.add
                          (local.get $l3)
                          (i32.const 8)))))
                  (if $I21
                    (select
                      (i32.eq
                        (local.get $l8)
                        (i32.const 4))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.stringConcat
                        (local.get $p2)
                        (local.get $l4)
                        (local.get $l5)
                        (i32.const 66684)
                        (i32.const 1))
                      (drop
                        (br_if $B1
                          (i32.const 4)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I22
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (local.set $l4
                        (i32.load offset=12
                          (local.get $l3)))
                      (local.set $l5
                        (i32.load offset=8
                          (local.get $l3)))
                      (br $B5))))
                (local.set $l4
                  (select
                    (local.get $l4)
                    (i32.add
                      (local.get $l3)
                      (i32.const 48))
                    (global.get $g1)))
                (if $I23
                  (select
                    (i32.eq
                      (local.get $l8)
                      (i32.const 5))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $syscall/js.jsString
                      (local.get $l4)
                      (local.get $p1)
                      (local.get $p2))
                    (drop
                      (br_if $B1
                        (i32.const 5)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I24
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=80
                      (local.get $l3)
                      (local.tee $l4
                        (i32.load offset=48
                          (local.get $l3))))
                    (local.set $l5
                      (i32.load offset=52
                        (local.get $l3)))
                    (local.set $p2
                      (i32.add
                        (local.get $l3)
                        (i32.const 40)))))
                (if $I25
                  (select
                    (i32.eq
                      (local.get $l8)
                      (i32.const 6))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.stringConcat
                      (local.get $p2)
                      (i32.const 66675)
                      (i32.const 9)
                      (local.get $l4)
                      (local.get $l5))
                    (drop
                      (br_if $B1
                        (i32.const 6)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I26
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=84
                      (local.get $l3)
                      (local.tee $l4
                        (i32.load offset=40
                          (local.get $l3))))
                    (local.set $l5
                      (i32.load offset=44
                        (local.get $l3)))
                    (local.set $p2
                      (i32.add
                        (local.get $l3)
                        (i32.const 32)))))
                (if $I27
                  (select
                    (i32.eq
                      (local.get $l8)
                      (i32.const 7))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.stringConcat
                      (local.get $p2)
                      (local.get $l4)
                      (local.get $l5)
                      (i32.const 66684)
                      (i32.const 1))
                    (drop
                      (br_if $B1
                        (i32.const 7)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I28
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (local.set $l4
                      (i32.load offset=36
                        (local.get $l3)))
                    (local.set $l5
                      (i32.load offset=32
                        (local.get $l3)))
                    (br $B5))))
              (if $I29
                (i32.eqz
                  (global.get $g1))
                (then
                  (local.set $l4
                    (i32.const 8))
                  (local.set $l5
                    (i32.const 66685))
                  (br $B5))))
            (if $I30
              (i32.eqz
                (global.get $g1))
              (then
                (local.set $l4
                  (i32.const 8))
                (local.set $l5
                  (i32.const 66693))
                (br $B5))))
          (if $I31
            (i32.eqz
              (global.get $g1))
            (then
              (local.set $l5
                (i32.const 66701))
              (local.set $l4
                (i32.const 10)))))
        (if $I32
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l9))
            (i32.store offset=4
              (local.get $p0)
              (local.get $l4))
            (i32.store
              (local.get $p0)
              (local.get $l5))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l3)
                (i32.const 96)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l7
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l7)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l7)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l7)
      (local.get $l3))
    (i32.store offset=20
      (local.get $l7)
      (local.get $l4))
    (i32.store offset=24
      (local.get $l7)
      (local.get $l5))
    (i32.store offset=28
      (local.get $l7)
      (local.get $l9))
    (i32.store offset=32
      (local.get $l7)
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 36))))
  (func $runtime.markRoots (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 16)))
        (local.set $p0
          (i32.load
            (local.tee $l2
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $l2)))
        (local.set $l3
          (i32.load offset=8
            (local.get $l2)))
        (local.set $l2
          (i32.load offset=12
            (local.get $l2)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (loop $L3
          (block $B4
            (if $I5
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B4
                  (i32.ge_u
                    (local.get $p0)
                    (local.get $p1)))
                (local.set $l2
                  (i32.lt_u
                    (local.tee $l3
                      (i32.load
                        (local.get $p0)))
                    (i32.const 68864)))))
            (block $B6
              (if $I7
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B6
                    (local.get $l2))
                  (br_if $B6
                    (local.tee $l2
                      (i32.ge_u
                        (local.get $l3)
                        (i32.load
                          (i32.const 68272)))))
                  (br_if $B6
                    (local.tee $l2
                      (i32.eqz
                        (i32.and
                          (call $_runtime.gcBlock_.state
                            (local.tee $l3
                              (i32.shr_u
                                (i32.sub
                                  (local.get $l3)
                                  (i32.const 68864))
                                (i32.const 4))))
                          (i32.const 255)))))
                  (br_if $B6
                    (local.tee $l2
                      (i32.eq
                        (i32.and
                          (call $_runtime.gcBlock_.state
                            (local.tee $l3
                              (call $_runtime.gcBlock_.findHead
                                (local.get $l3))))
                          (i32.const 255))
                        (i32.const 3))))))
              (if $I8
                (i32.eqz
                  (select
                    (local.get $l4)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call $runtime.startMark
                    (local.get $l3))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1)))))))
            (if $I9
              (i32.eqz
                (global.get $g1))
              (then
                (local.set $p0
                  (i32.add
                    (local.get $p0)
                    (i32.const 4)))
                (br $L3)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l4)
      (local.get $l3))
    (i32.store offset=12
      (local.get $l4)
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 16))))
  (func $_runtime.gcBlock_.state (type $t4) (param $p0 i32) (result i32)
    (i32.and
      (i32.shr_u
        (i32.load8_u
          (i32.add
            (i32.load
              (i32.const 68272))
            (i32.shr_u
              (local.get $p0)
              (i32.const 2))))
        (i32.and
          (i32.shl
            (local.get $p0)
            (i32.const 1))
          (i32.const 6)))
      (i32.const 3)))
  (func $_runtime.gcBlock_.markFree (type $t1) (param $p0 i32)
    (local $l1 i32)
    (i32.store8
      (local.tee $l1
        (i32.add
          (i32.load
            (i32.const 68272))
          (i32.shr_u
            (local.get $p0)
            (i32.const 2))))
      (i32.and
        (i32.load8_u
          (local.get $l1))
        (i32.xor
          (i32.shl
            (i32.const 3)
            (i32.and
              (i32.shl
                (local.get $p0)
                (i32.const 1))
              (i32.const 6)))
          (i32.const -1)))))
  (func $runtime.growHeap (type $t9) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (if $I0
      (local.tee $l1
        (i32.ne
          (memory.grow
            (memory.size))
          (i32.const -1)))
      (then
        (local.set $l0
          (memory.size))
        (local.set $l2
          (i32.load
            (i32.const 68136)))
        (i32.store
          (i32.const 68136)
          (i32.shl
            (local.get $l0)
            (i32.const 16)))
        (local.set $l0
          (i32.load
            (i32.const 68272)))
        (call $runtime.calculateHeapAddresses)
        (memory.copy
          (i32.load
            (i32.const 68272))
          (local.get $l0)
          (i32.sub
            (local.get $l2)
            (local.get $l0)))))
    (local.get $l1))
  (func $runtime.startMark (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (local.set $p0
      (block $B0 (result i32)
        (if $I1
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l7
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I2
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.add
                  (global.get $__stack_pointer)
                  (i32.const -64))))
            (memory.fill
              (i32.add
                (local.get $l4)
                (i32.const 4))
              (i32.const 0)
              (i32.const 60))
            (i32.store
              (local.get $l4)
              (local.get $p0))
            (call $_runtime.gcBlock_.setState
              (local.get $p0)
              (i32.const 3))
            (local.set $l1
              (i32.const 1))
            (block $B3
              (loop $L4
                (if $I5
                  (i32.gt_s
                    (local.get $l1)
                    (i32.const 0))
                  (then
                    (br_if $B3
                      (i32.gt_u
                        (local.tee $l1
                          (i32.sub
                            (local.get $l1)
                            (i32.const 1)))
                        (i32.const 15)))
                    (local.set $p0
                      (i32.shl
                        (local.tee $l3
                          (i32.load
                            (i32.add
                              (local.get $l4)
                              (i32.shl
                                (local.get $l1)
                                (i32.const 2)))))
                        (i32.const 4)))
                    (block $B6
                      (block $B7
                        (br_table $B7 $B6 $B7 $B6
                          (i32.sub
                            (i32.and
                              (call $_runtime.gcBlock_.state
                                (local.get $l3))
                              (i32.const 255))
                            (i32.const 1))))
                      (local.set $l3
                        (i32.add
                          (local.get $l3)
                          (i32.const 1))))
                    (local.set $l6
                      (i32.add
                        (local.get $p0)
                        (i32.const 68864)))
                    (local.set $l2
                      (i32.sub
                        (local.tee $l5
                          (i32.shl
                            (local.get $l3)
                            (i32.const 4)))
                        (local.get $p0)))
                    (local.set $l5
                      (i32.add
                        (local.get $l5)
                        (i32.const 68864)))
                    (local.set $l8
                      (i32.load
                        (i32.const 68272)))
                    (loop $L8
                      (block $B9
                        (local.set $p0
                          (local.get $l2))
                        (br_if $B9
                          (i32.ge_u
                            (local.get $l5)
                            (local.get $l8)))
                        (local.set $l2
                          (i32.add
                            (local.get $p0)
                            (i32.const 16)))
                        (local.set $l5
                          (i32.add
                            (local.get $l5)
                            (i32.const 16)))
                        (call $_runtime.gcBlock_.state
                          (local.get $l3))
                        (local.set $l3
                          (i32.add
                            (local.get $l3)
                            (i32.const 1)))
                        (i32.const 255)
                        (br_if $L8
                          (i32.eq
                            (i32.and)
                            (i32.const 2)))))
                    (loop $L10
                      (br_if $L4
                        (i32.eqz
                          (local.get $p0)))
                      (block $B11
                        (br_if $B11
                          (i32.lt_u
                            (local.tee $l2
                              (i32.load
                                (local.get $l6)))
                            (i32.const 68864)))
                        (br_if $B11
                          (i32.ge_u
                            (local.get $l2)
                            (i32.load
                              (i32.const 68272))))
                        (br_if $B11
                          (i32.eqz
                            (i32.and
                              (call $_runtime.gcBlock_.state
                                (local.tee $l2
                                  (i32.shr_u
                                    (i32.sub
                                      (local.get $l2)
                                      (i32.const 68864))
                                    (i32.const 4))))
                              (i32.const 255))))
                        (br_if $B11
                          (i32.eq
                            (i32.and
                              (call $_runtime.gcBlock_.state
                                (local.tee $l2
                                  (call $_runtime.gcBlock_.findHead
                                    (local.get $l2))))
                              (i32.const 255))
                            (i32.const 3)))
                        (call $_runtime.gcBlock_.setState
                          (local.get $l2)
                          (i32.const 3))
                        (if $I12
                          (i32.eq
                            (local.get $l1)
                            (i32.const 16))
                          (then
                            (i32.store8
                              (i32.const 68313)
                              (i32.const 1))
                            (local.set $l1
                              (i32.const 16))
                            (br $B11)))
                        (br_if $B3
                          (i32.gt_u
                            (local.get $l1)
                            (i32.const 15)))
                        (i32.store
                          (i32.add
                            (local.get $l4)
                            (i32.shl
                              (local.get $l1)
                              (i32.const 2)))
                          (local.get $l2))
                        (local.set $l1
                          (i32.add
                            (local.get $l1)
                            (i32.const 1))))
                      (local.set $p0
                        (i32.sub
                          (local.get $p0)
                          (i32.const 4)))
                      (local.set $l6
                        (i32.add
                          (local.get $l6)
                          (i32.const 4)))
                      (br $L10))
                    (unreachable))))
              (global.set $__stack_pointer
                (i32.sub
                  (local.get $l4)
                  (i32.const -64)))
              (return))))
        (if $I13
          (i32.eqz
            (select
              (local.get $l7)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.lookupPanic)
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I14
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $_runtime.gcBlock_.setState (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (i32.store8
      (local.tee $l2
        (i32.add
          (i32.load
            (i32.const 68272))
          (i32.shr_u
            (local.get $p0)
            (i32.const 2))))
      (i32.or
        (i32.load8_u
          (local.get $l2))
        (i32.shl
          (local.get $p1)
          (i32.and
            (i32.shl
              (local.get $p0)
              (i32.const 1))
            (i32.const 6))))))
  (func $_runtime.gcBlock_.findHead (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    (loop $L0
      (call $_runtime.gcBlock_.state
        (local.get $p0))
      (local.set $p0
        (i32.sub
          (local.get $p0)
          (i32.const 1)))
      (i32.const 255)
      (br_if $L0
        (i32.eq
          (i32.and)
          (i32.const 2))))
    (i32.add
      (local.get $p0)
      (i32.const 1)))
  (func $github.com/onlpsec/fingerprint/internal/canvas.CanvasFp (type $t6) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (param $p6 i32)
    (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i64) (local $l15 i64) (local $l16 i64) (local $l17 i64) (local $l18 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 68)))
        (local.set $p0
          (i32.load
            (local.tee $l9
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=12
            (local.get $l9)))
        (local.set $p3
          (i32.load offset=16
            (local.get $l9)))
        (local.set $p4
          (i32.load offset=20
            (local.get $l9)))
        (local.set $p5
          (i32.load offset=24
            (local.get $l9)))
        (local.set $p6
          (i32.load offset=28
            (local.get $l9)))
        (local.set $l7
          (i32.load offset=32
            (local.get $l9)))
        (local.set $l14
          (i64.load offset=36 align=4
            (local.get $l9)))
        (local.set $l15
          (i64.load offset=44 align=4
            (local.get $l9)))
        (local.set $l10
          (i32.load offset=52
            (local.get $l9)))
        (local.set $l11
          (i32.load offset=56
            (local.get $l9)))
        (local.set $l13
          (i32.load offset=60
            (local.get $l9)))
        (local.set $l12
          (i32.load offset=64
            (local.get $l9)))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l9)))))
    (local.set $l9
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l8
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $p6
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 624))))
            (i32.store offset=444
              (local.get $p6)
              (i32.const 43))
            (memory.fill
              (i32.add
                (local.get $p6)
                (i32.const 448))
              (i32.const 0)
              (i32.const 172))
            (i32.store offset=440
              (local.get $p6)
              (local.tee $l13
                (i32.load
                  (i32.const 68316))))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $p6)
                (i32.const 440)))
            (local.set $p2
              (i32.add
                (local.get $p6)
                (i32.const 224)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l8)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Get
              (local.get $p2)
              (i64.const 9221120241336057861)
              (i32.const 0)
              (i32.const 66972)
              (i32.const 8))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=436
              (local.get $p6)
              (i32.const 66992))
            (i32.store offset=432
              (local.get $p6)
              (i32.const 67000))
            (i32.store offset=448
              (local.get $p6)
              (local.tee $p2
                (i32.load offset=232
                  (local.get $p6))))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 208)))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 432)))
            (local.set $p1
              (i64.load offset=224
                (local.get $p6)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67016)
              (i32.const 13)
              (local.get $p4)
              (i32.const 1))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=452
              (local.get $p6)
              (local.tee $l7
                (i32.load offset=216
                  (local.get $p6))))
            (local.set $l14
              (i64.load offset=208
                (local.get $p6)))))
        (if $I8
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $l14)
              (local.get $l7)
              (i32.const 67029)
              (i32.const 5)
              (i32.const 66900)
              (i32.const 2000))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I9
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 3))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $l14)
              (local.get $l7)
              (i32.const 67034)
              (i32.const 6)
              (i32.const 66900)
              (i32.const 200))
            (drop
              (br_if $B1
                (i32.const 3)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (local.set $p2
          (select
            (local.get $p2)
            (i32.add
              (local.get $p6)
              (i32.const 192))
            (global.get $g1)))
        (if $I10
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 4))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Get
              (local.get $p2)
              (local.get $l14)
              (local.get $l7)
              (i32.const 67040)
              (i32.const 5))
            (drop
              (br_if $B1
                (i32.const 4)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=456
              (local.get $p6)
              (local.tee $p2
                (i32.load offset=200
                  (local.get $p6))))
            (local.set $p1
              (i64.load offset=192
                (local.get $p6)))))
        (if $I12
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 5))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67064)
              (i32.const 7)
              (i32.const 67000)
              (i32.const 67056))
            (drop
              (br_if $B1
                (i32.const 5)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I13
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=428
              (local.get $p6)
              (i32.const 67080))
            (i32.store offset=424
              (local.get $p6)
              (i32.const 67000))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 424)))
            (local.set $p2
              (i32.add
                (local.get $p6)
                (i32.const 176)))))
        (if $I14
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 6))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p2)
              (local.get $l14)
              (local.get $l7)
              (i32.const 67088)
              (i32.const 10)
              (local.get $p3)
              (i32.const 1))
            (drop
              (br_if $B1
                (i32.const 6)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I15
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=420
              (local.get $p6)
              (i32.const 10))
            (i32.store offset=416
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=412
              (local.get $p6)
              (i32.const 10))
            (i32.store offset=408
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=404
              (local.get $p6)
              (i32.const 0))
            (i32.store offset=400
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=396
              (local.get $p6)
              (i32.const 0))
            (i32.store offset=392
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=460
              (local.get $p6)
              (local.tee $p2
                (i32.load offset=184
                  (local.get $p6))))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 160)))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 392)))
            (local.set $p1
              (i64.load offset=176
                (local.get $p6)))))
        (if $I16
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 7))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67098)
              (i32.const 4)
              (local.get $p4)
              (i32.const 4))
            (drop
              (br_if $B1
                (i32.const 7)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I17
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=388
              (local.get $p6)
              (i32.const 6))
            (i32.store offset=384
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=380
              (local.get $p6)
              (i32.const 6))
            (i32.store offset=376
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=372
              (local.get $p6)
              (i32.const 2))
            (i32.store offset=368
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=364
              (local.get $p6)
              (i32.const 2))
            (i32.store offset=360
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=464
              (local.get $p6)
              (i32.load offset=168
                (local.get $p6)))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 360)))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 144)))))
        (if $I18
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 8))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67098)
              (i32.const 4)
              (local.get $p4)
              (i32.const 4))
            (drop
              (br_if $B1
                (i32.const 8)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I19
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=356
              (local.get $p6)
              (i32.const 67456))
            (i32.store offset=352
              (local.get $p6)
              (i32.const 67000))
            (i32.store offset=348
              (local.get $p6)
              (i32.const 5))
            (i32.store offset=344
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=340
              (local.get $p6)
              (i32.const 5))
            (i32.store offset=336
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=468
              (local.get $p6)
              (i32.load offset=152
                (local.get $p6)))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 336)))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 128)))))
        (if $I20
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 9))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67102)
              (i32.const 13)
              (local.get $p4)
              (i32.const 3))
            (drop
              (br_if $B1
                (i32.const 9)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I21
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=472
              (local.get $p6)
              (local.tee $p3
                (i32.load offset=136
                  (local.get $p6))))
            (local.set $l15
              (i64.load offset=128
                (local.get $p6)))))
        (if $I22
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 10))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Bool
              (local.get $l15))
            (drop
              (br_if $B1
                (i32.const 10)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l12)))
        (if $I23
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 11))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67136)
              (i32.const 12)
              (i32.const 67000)
              (i32.const 67128))
            (drop
              (br_if $B1
                (i32.const 11)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I24
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 12))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67152))
            (drop
              (br_if $B1
                (i32.const 12)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I25
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=332
              (local.get $p6)
              (i32.const 20))
            (i32.store offset=328
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=324
              (local.get $p6)
              (i32.const 62))
            (i32.store offset=320
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=316
              (local.get $p6)
              (i32.const 1))
            (i32.store offset=312
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=308
              (local.get $p6)
              (i32.const 125))
            (i32.store offset=304
              (local.get $p6)
              (i32.const 66900))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 304)))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 112)))))
        (if $I26
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 13))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67160)
              (i32.const 8)
              (local.get $p4)
              (i32.const 4))
            (drop
              (br_if $B1
                (i32.const 13)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I27
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=476
              (local.get $p6)
              (local.tee $p3
                (i32.load offset=120
                  (local.get $p6))))))
        (if $I28
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 14))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67176))
            (drop
              (br_if $B1
                (i32.const 14)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I29
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 15))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67264)
              (i32.const 4)
              (i32.const 67000)
              (i32.const 67200))
            (drop
              (br_if $B1
                (i32.const 15)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I30
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=300
              (local.get $p6)
              (i32.const 15))
            (i32.store offset=296
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=292
              (local.get $p6)
              (i32.const 2))
            (i32.store offset=288
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=284
              (local.get $p6)
              (i32.const 67312))
            (i32.store offset=280
              (local.get $p6)
              (i32.const 67000))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 280)))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 96)))))
        (if $I31
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 16))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67320)
              (i32.const 8)
              (local.get $p4)
              (i32.const 3))
            (drop
              (br_if $B1
                (i32.const 16)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I32
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=480
              (local.get $p6)
              (local.tee $p3
                (i32.load offset=104
                  (local.get $p6))))))
        (if $I33
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 17))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67232))
            (drop
              (br_if $B1
                (i32.const 17)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I34
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 18))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67264)
              (i32.const 4)
              (i32.const 67000)
              (i32.const 67256))
            (drop
              (br_if $B1
                (i32.const 18)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I35
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=276
              (local.get $p6)
              (i32.const 45))
            (i32.store offset=272
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=268
              (local.get $p6)
              (i32.const 4))
            (i32.store offset=264
              (local.get $p6)
              (i32.const 66900))
            (i32.store offset=260
              (local.get $p6)
              (i32.const 67312))
            (i32.store offset=256
              (local.get $p6)
              (i32.const 67000))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 256)))
            (local.set $p3
              (i32.add
                (local.get $p6)
                (i32.const 80)))))
        (if $I36
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 19))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67320)
              (i32.const 8)
              (local.get $p4)
              (i32.const 3))
            (drop
              (br_if $B1
                (i32.const 19)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I37
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=484
              (local.get $p6)
              (local.tee $p3
                (i32.load offset=88
                  (local.get $p6))))))
        (if $I38
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 20))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67344)
              (i32.const 24)
              (i32.const 67000)
              (i32.const 67336))
            (drop
              (br_if $B1
                (i32.const 20)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I39
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 21))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67432))
            (drop
              (br_if $B1
                (i32.const 21)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I40
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 22))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $github.com/onlpsec/fingerprint/internal/canvas.drawCircle
              (local.get $p1)
              (local.get $p2)
              (i32.const 50)
              (i32.const 50)
              (i32.const 50))
            (drop
              (br_if $B1
                (i32.const 22)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I41
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 23))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67384))
            (drop
              (br_if $B1
                (i32.const 23)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I42
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 24))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $github.com/onlpsec/fingerprint/internal/canvas.drawCircle
              (local.get $p1)
              (local.get $p2)
              (i32.const 100)
              (i32.const 50)
              (i32.const 50))
            (drop
              (br_if $B1
                (i32.const 24)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I43
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 25))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67408))
            (drop
              (br_if $B1
                (i32.const 25)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I44
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 26))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $github.com/onlpsec/fingerprint/internal/canvas.drawCircle
              (local.get $p1)
              (local.get $p2)
              (i32.const 75)
              (i32.const 100)
              (i32.const 50))
            (drop
              (br_if $B1
                (i32.const 26)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I45
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 27))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Set
              (local.get $p1)
              (local.get $p2)
              (i32.const 67440)
              (i32.const 9)
              (i32.const 67000)
              (i32.const 67432))
            (drop
              (br_if $B1
                (i32.const 27)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I46
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 28))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $github.com/onlpsec/fingerprint/internal/canvas.drawCircle
              (local.get $p1)
              (local.get $p2)
              (i32.const 75)
              (i32.const 75)
              (i32.const 75))
            (drop
              (br_if $B1
                (i32.const 28)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I47
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 29))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $github.com/onlpsec/fingerprint/internal/canvas.drawCircle
              (local.get $p1)
              (local.get $p2)
              (i32.const 75)
              (i32.const 75)
              (i32.const 25))
            (drop
              (br_if $B1
                (i32.const 29)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I48
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=252
              (local.get $p6)
              (i32.const 67456))
            (i32.store offset=248
              (local.get $p6)
              (i32.const 67000))
            (local.set $p4
              (i32.add
                (local.get $p6)
                (i32.const 248)))
            (local.set $p3
              (i32.sub
                (local.get $p6)
                (i32.const -64)))))
        (if $I49
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 30))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p3)
              (local.get $p1)
              (local.get $p2)
              (i32.const 67464)
              (i32.const 4)
              (local.get $p4)
              (i32.const 1))
            (drop
              (br_if $B1
                (i32.const 30)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I50
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=488
              (local.get $p6)
              (i32.load offset=72
                (local.get $p6)))
            (local.set $p2
              (i32.add
                (local.get $p6)
                (i32.const 48)))))
        (if $I51
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 31))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Get
              (local.get $p2)
              (local.get $l14)
              (local.get $l7)
              (i32.const 67468)
              (i32.const 9))
            (drop
              (br_if $B1
                (i32.const 31)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I52
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=504
              (local.get $p6)
              (local.tee $p2
                (i32.load offset=56
                  (local.get $p6))))
            (i32.store offset=500
              (local.get $p6)
              (local.get $p2))
            (i32.store offset=496
              (local.get $p6)
              (local.get $p2))
            (i32.store offset=492
              (local.get $p6)
              (local.get $p2))
            (local.set $p3
              (i32.const 0))
            (local.set $l10
              (i32.const 0))
            (local.set $p1
              (i64.load offset=48
                (local.get $p6)))))
        (if $I53
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 32))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Type
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p4)))
        (block $B54
          (block $B55
            (block $B56
              (block $B57
                (block $B58
                  (block $B59
                    (if $I60
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (block $B61
                          (br_table $B61 $B58 $B59 $B57 $B57 $B57 $B56
                            (i32.sub
                              (local.get $p4)
                              (i32.const 2))))
                        (local.set $l10
                          (i32.const 0))
                        (local.set $p3
                          (i32.const 0))))
                    (if $I62
                      (select
                        (i32.eq
                          (local.get $l8)
                          (i32.const 33))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $_syscall/js.Value_.Bool
                          (local.get $p1))
                        (drop
                          (br_if $B1
                            (i32.const 33)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))
                        (local.set $p2)))
                    (if $I63
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (br_if $B57
                          (local.tee $p2
                            (i32.and
                              (local.get $p2)
                              (i32.const 1))))
                        (br $B56))))
                  (local.set $p3
                    (select
                      (local.get $p3)
                      (i32.add
                        (local.get $p6)
                        (i32.const 40))
                      (global.get $g1)))
                  (if $I64
                    (select
                      (i32.eq
                        (local.get $l8)
                        (i32.const 34))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_syscall/js.Value_.String
                        (local.get $p3)
                        (local.get $p1)
                        (local.get $p2))
                      (drop
                        (br_if $B1
                          (i32.const 34)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I65
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=508
                        (local.get $p6)
                        (i32.load offset=40
                          (local.get $p6)))
                      (br_if $B57
                        (local.tee $p2
                          (i32.load offset=44
                            (local.get $p6))))
                      (local.set $p3
                        (i32.const 0))
                      (local.set $l10
                        (i32.const 0))
                      (br $B56))))
                (if $I66
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (local.set $p3
                      (i32.const 0))
                    (local.set $l10
                      (i32.const 0))
                    (br_if $B56
                      (local.tee $p2
                        (i64.gt_u
                          (local.tee $p1
                            (i64.sub
                              (local.get $p1)
                              (i64.const 9221120237041090562)))
                          (i64.const -3)))))))
              (if $I67
                (i32.eqz
                  (global.get $g1))
                (then
                  (local.set $p3
                    (i32.add
                      (local.get $p6)
                      (i32.const 24)))
                  (local.set $p2
                    (i32.const 0))))
              (if $I68
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 35))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $_syscall/js.Value_.Call
                    (local.get $p3)
                    (local.get $l14)
                    (local.get $l7)
                    (i32.const 67468)
                    (i32.const 9)
                    (i32.const 0)
                    (i32.const 0))
                  (drop
                    (br_if $B1
                      (i32.const 35)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I69
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=512
                    (local.get $p6)
                    (local.tee $l7
                      (i32.load offset=32
                        (local.get $p6))))
                  (local.set $p3
                    (i32.add
                      (local.get $p6)
                      (i32.const 16)))
                  (local.set $p1
                    (i64.load offset=24
                      (local.get $p6)))))
              (if $I70
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 36))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $_syscall/js.Value_.String
                    (local.get $p3)
                    (local.get $p1)
                    (local.get $l7))
                  (drop
                    (br_if $B1
                      (i32.const 36)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I71
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=540
                    (local.get $p6)
                    (local.tee $l7
                      (i32.load offset=16
                        (local.get $p6))))
                  (i32.store offset=536
                    (local.get $p6)
                    (local.get $l7))
                  (i32.store offset=516
                    (local.get $p6)
                    (local.get $l7))
                  (local.set $l15
                    (i64.const 1234))
                  (local.set $l10
                    (i32.load offset=20
                      (local.get $p6)))))
              (if $I72
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 37))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (i32.const 24))
                  (drop
                    (br_if $B1
                      (i32.const 37)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l11)))
              (if $I73
                (i32.eqz
                  (global.get $g1))
                (then
                  (i64.store offset=16
                    (local.get $l11)
                    (i64.const 1234))
                  (i64.store offset=8
                    (local.get $l11)
                    (i64.const 1234))
                  (i64.store
                    (local.get $l11)
                    (i64.const 1234))
                  (i32.store offset=524
                    (local.get $p6)
                    (local.get $l11))
                  (i32.store offset=528
                    (local.get $p6)
                    (local.get $l11))
                  (i32.store offset=520
                    (local.get $p6)
                    (local.get $l11))))
              (if $I74
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 38))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (local.get $l10))
                  (drop
                    (br_if $B1
                      (i32.const 38)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p5)))
              (if $I75
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=548
                    (local.get $p6)
                    (local.get $p5))
                  (i32.store offset=552
                    (local.get $p6)
                    (local.get $p5))
                  (i32.store offset=544
                    (local.get $p6)
                    (local.get $p5))
                  (i32.store offset=532
                    (local.get $p6)
                    (local.get $p5))
                  (memory.copy
                    (local.get $p5)
                    (local.get $l7)
                    (local.get $l10))
                  (local.set $l7
                    (i32.sub
                      (local.get $l10)
                      (i32.const 8)))
                  (local.set $p3
                    (local.get $p5))
                  (local.set $l16
                    (i64.const 1234))
                  (loop $L76
                    (if $I77
                      (i32.le_s
                        (local.tee $p4
                          (i32.add
                            (local.get $p2)
                            (i32.const 16)))
                        (local.get $l10))
                      (then
                        (br_if $B54
                          (i32.lt_u
                            (local.get $l10)
                            (i32.or
                              (local.get $p2)
                              (i32.const 8))))
                        (local.set $l18
                          (i64.shl
                            (i64.extend_i32_u
                              (local.get $l7))
                            (i64.const 3)))
                        (local.set $p1
                          (i64.const 0))
                        (local.set $p2
                          (local.get $p3))
                        (local.set $l14
                          (i64.const 0))
                        (local.set $l17
                          (i64.const 0))
                        (loop $L78
                          (if $I79
                            (i64.ne
                              (local.get $p1)
                              (i64.const 64))
                            (then
                              (br_if $B55
                                (i64.eq
                                  (local.get $p1)
                                  (local.get $l18)))
                              (local.set $l14
                                (i64.or
                                  (i64.shl
                                    (i64.load8_u
                                      (local.get $p2))
                                    (local.get $p1))
                                  (local.get $l14)))
                              (local.set $l17
                                (i64.or
                                  (local.get $l17)
                                  (i64.shl
                                    (i64.load8_u
                                      (i32.add
                                        (local.get $p2)
                                        (i32.const 8)))
                                    (local.get $p1))))
                              (local.set $p1
                                (i64.add
                                  (local.get $p1)
                                  (i64.const 8)))
                              (local.set $p2
                                (i32.add
                                  (local.get $p2)
                                  (i32.const 1)))
                              (br $L78))))
                        (i64.store
                          (local.get $l11)
                          (local.tee $l16
                            (i64.add
                              (i64.mul
                                (i64.add
                                  (local.get $l15)
                                  (i64.rotl
                                    (i64.xor
                                      (local.get $l16)
                                      (i64.mul
                                        (i64.or
                                          (i64.mul
                                            (local.get $l14)
                                            (i64.const -8601547726154366976))
                                          (i64.shr_u
                                            (i64.mul
                                              (local.get $l14)
                                              (i64.const -8663945395140668459))
                                            (i64.const 33)))
                                        (i64.const 5545529020109919103)))
                                    (i64.const 27)))
                                (i64.const 5))
                              (i64.const 1390208809))))
                        (i64.store offset=8
                          (local.get $l11)
                          (local.tee $l15
                            (i64.add
                              (i64.mul
                                (i64.add
                                  (local.get $l16)
                                  (i64.rotl
                                    (i64.xor
                                      (local.get $l15)
                                      (i64.mul
                                        (i64.or
                                          (i64.mul
                                            (local.get $l17)
                                            (i64.const 5659660229084708864))
                                          (i64.shr_u
                                            (i64.mul
                                              (local.get $l17)
                                              (i64.const 5545529020109919103))
                                            (i64.const 31)))
                                        (i64.const -8663945395140668459)))
                                    (i64.const 31)))
                                (i64.const 5))
                              (i64.const 944331445))))
                        (local.set $p3
                          (i32.add
                            (local.get $p3)
                            (i32.const 16)))
                        (local.set $l7
                          (i32.sub
                            (local.get $l7)
                            (i32.const 16)))
                        (local.set $p2
                          (local.get $p4))
                        (br $L76))))
                  (br_if $B54
                    (i32.gt_u
                      (local.get $p2)
                      (local.get $l10)))
                  (local.set $p3
                    (i32.sub
                      (local.get $l10)
                      (local.get $p2)))
                  (local.set $l7
                    (i32.add
                      (local.get $p2)
                      (local.get $p5)))
                  (block $B80
                    (block $B81
                      (block $B82
                        (block $B83
                          (block $B84
                            (block $B85
                              (block $B86
                                (block $B87
                                  (block $B88
                                    (block $B89
                                      (block $B90
                                        (block $B91
                                          (block $B92
                                            (block $B93
                                              (block $B94
                                                (block $B95
                                                  (block $B96
                                                    (block $B97
                                                      (block $B98
                                                        (block $B99
                                                          (block $B100
                                                            (block $B101
                                                              (block $B102
                                                                (block $B103
                                                                  (block $B104
                                                                    (block $B105
                                                                      (block $B106
                                                                        (block $B107
                                                                          (block $B108
                                                                            (block $B109
                                                                              (br_table $B82 $B84 $B86 $B88 $B90 $B92 $B94 $B96 $B98 $B100 $B102 $B104 $B106 $B108 $B109 $B80
                                                                                (i32.sub
                                                                                  (i32.and
                                                                                    (local.get $l10)
                                                                                    (i32.const 15))
                                                                                  (i32.const 1))))
                                                                            (br_if $B55
                                                                              (local.tee $p2
                                                                                (i32.lt_u
                                                                                  (local.get $p3)
                                                                                  (i32.const 15))))
                                                                            (local.set $p1
                                                                              (i64.shl
                                                                                (i64.load8_u offset=14
                                                                                  (local.get $l7))
                                                                                (i64.const 48)))
                                                                            (br $B107))
                                                                          (local.set $p1
                                                                            (i64.const 0))
                                                                          (br_if $B55
                                                                            (local.tee $p2
                                                                              (i32.lt_u
                                                                                (local.get $p3)
                                                                                (i32.const 14)))))
                                                                        (local.set $p1
                                                                          (i64.or
                                                                            (i64.shl
                                                                              (i64.load8_u offset=13
                                                                                (local.get $l7))
                                                                              (i64.const 40))
                                                                            (local.get $p1)))
                                                                        (br $B105))
                                                                      (local.set $p1
                                                                        (i64.const 0))
                                                                      (br_if $B55
                                                                        (local.tee $p2
                                                                          (i32.lt_u
                                                                            (local.get $p3)
                                                                            (i32.const 13)))))
                                                                    (local.set $p1
                                                                      (i64.xor
                                                                        (i64.shl
                                                                          (i64.load8_u offset=12
                                                                            (local.get $l7))
                                                                          (i64.const 32))
                                                                        (local.get $p1)))
                                                                    (br $B103))
                                                                  (local.set $p1
                                                                    (i64.const 0))
                                                                  (br_if $B55
                                                                    (local.tee $p2
                                                                      (i32.lt_u
                                                                        (local.get $p3)
                                                                        (i32.const 12)))))
                                                                (local.set $p1
                                                                  (i64.xor
                                                                    (i64.shl
                                                                      (i64.load8_u offset=11
                                                                        (local.get $l7))
                                                                      (i64.const 24))
                                                                    (local.get $p1)))
                                                                (br $B101))
                                                              (local.set $p1
                                                                (i64.const 0))
                                                              (br_if $B55
                                                                (local.tee $p2
                                                                  (i32.lt_u
                                                                    (local.get $p3)
                                                                    (i32.const 11)))))
                                                            (local.set $p1
                                                              (i64.xor
                                                                (i64.shl
                                                                  (i64.load8_u offset=10
                                                                    (local.get $l7))
                                                                  (i64.const 16))
                                                                (local.get $p1)))
                                                            (br $B99))
                                                          (local.set $p1
                                                            (i64.const 0))
                                                          (br_if $B55
                                                            (local.tee $p2
                                                              (i32.lt_u
                                                                (local.get $p3)
                                                                (i32.const 10)))))
                                                        (local.set $p1
                                                          (i64.xor
                                                            (i64.shl
                                                              (i64.load8_u offset=9
                                                                (local.get $l7))
                                                              (i64.const 8))
                                                            (local.get $p1)))
                                                        (br $B97))
                                                      (local.set $p1
                                                        (i64.const 0))
                                                      (br_if $B55
                                                        (local.tee $p2
                                                          (i32.lt_u
                                                            (local.get $p3)
                                                            (i32.const 9)))))
                                                    (local.set $l14
                                                      (i64.shr_u
                                                        (i64.mul
                                                          (local.tee $p1
                                                            (i64.xor
                                                              (i64.load8_u offset=8
                                                                (local.get $l7))
                                                              (local.get $p1)))
                                                          (i64.const 5545529020109919103))
                                                        (i64.const 31)))
                                                    (local.set $l15
                                                      (i64.xor
                                                        (local.get $l15)
                                                        (i64.mul
                                                          (i64.or
                                                            (local.get $l14)
                                                            (i64.mul
                                                              (local.get $p1)
                                                              (i64.const 5659660229084708864)))
                                                          (i64.const -8663945395140668459))))
                                                    (br $B95))
                                                  (br_if $B55
                                                    (local.tee $p2
                                                      (i32.lt_u
                                                        (local.get $p3)
                                                        (i32.const 8)))))
                                                (local.set $p1
                                                  (i64.shl
                                                    (i64.load8_u offset=7
                                                      (local.get $l7))
                                                    (i64.const 56)))
                                                (br $B93))
                                              (local.set $p1
                                                (i64.const 0))
                                              (br_if $B55
                                                (local.tee $p2
                                                  (i32.lt_u
                                                    (local.get $p3)
                                                    (i32.const 7)))))
                                            (local.set $p1
                                              (i64.or
                                                (i64.shl
                                                  (i64.load8_u offset=6
                                                    (local.get $l7))
                                                  (i64.const 48))
                                                (local.get $p1)))
                                            (br $B91))
                                          (local.set $p1
                                            (i64.const 0))
                                          (br_if $B55
                                            (local.tee $p2
                                              (i32.lt_u
                                                (local.get $p3)
                                                (i32.const 6)))))
                                        (local.set $p1
                                          (i64.xor
                                            (i64.shl
                                              (i64.load8_u offset=5
                                                (local.get $l7))
                                              (i64.const 40))
                                            (local.get $p1)))
                                        (br $B89))
                                      (local.set $p1
                                        (i64.const 0))
                                      (br_if $B55
                                        (local.tee $p2
                                          (i32.lt_u
                                            (local.get $p3)
                                            (i32.const 5)))))
                                    (local.set $p1
                                      (i64.xor
                                        (i64.shl
                                          (i64.load8_u offset=4
                                            (local.get $l7))
                                          (i64.const 32))
                                        (local.get $p1)))
                                    (br $B87))
                                  (local.set $p1
                                    (i64.const 0))
                                  (br_if $B55
                                    (local.tee $p2
                                      (i32.lt_u
                                        (local.get $p3)
                                        (i32.const 4)))))
                                (local.set $p1
                                  (i64.xor
                                    (i64.shl
                                      (i64.load8_u offset=3
                                        (local.get $l7))
                                      (i64.const 24))
                                    (local.get $p1)))
                                (br $B85))
                              (local.set $p1
                                (i64.const 0))
                              (br_if $B55
                                (local.tee $p2
                                  (i32.lt_u
                                    (local.get $p3)
                                    (i32.const 3)))))
                            (local.set $p1
                              (i64.xor
                                (i64.shl
                                  (i64.load8_u offset=2
                                    (local.get $l7))
                                  (i64.const 16))
                                (local.get $p1)))
                            (br $B83))
                          (local.set $p1
                            (i64.const 0))
                          (br_if $B55
                            (local.tee $p2
                              (i32.lt_u
                                (local.get $p3)
                                (i32.const 2)))))
                        (local.set $p1
                          (i64.xor
                            (i64.shl
                              (i64.load8_u offset=1
                                (local.get $l7))
                              (i64.const 8))
                            (local.get $p1)))
                        (br $B81))
                      (local.set $p1
                        (i64.const 0))
                      (br_if $B55
                        (local.tee $p2
                          (i32.eq
                            (local.get $p2)
                            (local.get $l10)))))
                    (local.set $l14
                      (i64.shr_u
                        (i64.mul
                          (local.tee $p1
                            (i64.xor
                              (i64.load8_u
                                (local.get $l7))
                              (local.get $p1)))
                          (i64.const -8663945395140668459))
                        (i64.const 33)))
                    (local.set $l16
                      (i64.xor
                        (local.get $l16)
                        (i64.mul
                          (i64.or
                            (local.get $l14)
                            (i64.mul
                              (local.get $p1)
                              (i64.const -8601547726154366976)))
                          (i64.const 5545529020109919103)))))
                  (local.set $l15
                    (i64.shr_u
                      (local.tee $l14
                        (i64.add
                          (local.tee $p1
                            (i64.add
                              (i64.xor
                                (local.get $l16)
                                (local.tee $p1
                                  (i64.extend_i32_s
                                    (local.get $l10))))
                              (local.tee $l15
                                (i64.xor
                                  (local.get $p1)
                                  (local.get $l15)))))
                          (local.get $l15)))
                      (i64.const 33)))
                  (local.set $l15
                    (i64.shr_u
                      (local.tee $l14
                        (i64.mul
                          (i64.xor
                            (local.get $l14)
                            (local.get $l15))
                          (i64.const -49064778989728563)))
                      (i64.const 33)))
                  (local.set $l16
                    (i64.shr_u
                      (local.tee $l14
                        (i64.mul
                          (i64.xor
                            (local.get $l14)
                            (local.get $l15))
                          (i64.const -4265267296055464877)))
                      (i64.const 33)))
                  (local.set $l15
                    (i64.shr_u
                      (local.tee $p1
                        (i64.mul
                          (i64.xor
                            (i64.shr_u
                              (local.get $p1)
                              (i64.const 33))
                            (local.get $p1))
                          (i64.const -49064778989728563)))
                      (i64.const 33)))
                  (i64.store
                    (local.get $l11)
                    (local.tee $p1
                      (i64.add
                        (local.tee $l14
                          (i64.xor
                            (local.get $l14)
                            (local.get $l16)))
                        (i64.xor
                          (local.tee $l15
                            (i64.shr_u
                              (local.tee $p1
                                (i64.mul
                                  (i64.xor
                                    (local.get $p1)
                                    (local.get $l15))
                                  (i64.const -4265267296055464877)))
                              (i64.const 33)))
                          (local.get $p1)))))
                  (i64.store offset=8
                    (local.get $l11)
                    (local.tee $l14
                      (i64.add
                        (local.get $p1)
                        (local.get $l14))))))
              (if $I110
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 39))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (i32.const 16))
                  (drop
                    (br_if $B1
                      (i32.const 39)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l7)))
              (if $I111
                (i32.eqz
                  (global.get $g1))
                (then
                  (i64.store8 offset=15
                    (local.get $l7)
                    (local.get $l14))
                  (i64.store8 offset=14
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 8)))
                  (i64.store8 offset=13
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 16)))
                  (i64.store8 offset=12
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 24)))
                  (i64.store8 offset=11
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 32)))
                  (i64.store8 offset=10
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 40)))
                  (i64.store8 offset=9
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 48)))
                  (i64.store8 offset=8
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $l14)
                      (i64.const 56)))
                  (i64.store8 offset=7
                    (local.get $l7)
                    (local.get $p1))
                  (i64.store8 offset=6
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 8)))
                  (i64.store8 offset=5
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 16)))
                  (i64.store8 offset=4
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 24)))
                  (i64.store8 offset=3
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 32)))
                  (i64.store8 offset=2
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 40)))
                  (i64.store8 offset=1
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 48)))
                  (i64.store8
                    (local.get $l7)
                    (i64.shr_u
                      (local.get $p1)
                      (i64.const 56)))
                  (i32.store offset=568
                    (local.get $p6)
                    (local.get $l7))
                  (i32.store offset=572
                    (local.get $p6)
                    (local.get $l7))
                  (i32.store offset=564
                    (local.get $p6)
                    (local.get $l7))
                  (i32.store offset=560
                    (local.get $p6)
                    (local.get $l7))
                  (i32.store offset=556
                    (local.get $p6)
                    (local.get $l7))))
              (if $I112
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 40))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (i32.const 32))
                  (drop
                    (br_if $B1
                      (i32.const 40)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l11)))
              (if $I113
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=576
                    (local.get $p6)
                    (local.get $l11))
                  (local.set $p2
                    (i32.const 0))
                  (loop $L114
                    (if $I115
                      (i32.eqz
                        (local.tee $p3
                          (i32.eq
                            (local.get $p2)
                            (i32.const 32))))
                      (then
                        (i32.store8
                          (i32.add
                            (local.tee $p3
                              (i32.add
                                (local.get $p2)
                                (local.get $l11)))
                            (i32.const 1))
                          (i32.load8_u
                            (i32.add
                              (i32.and
                                (local.tee $l10
                                  (i32.load8_u
                                    (local.get $l7)))
                                (i32.const 15))
                              (i32.const 65536))))
                        (i32.store8
                          (local.get $p3)
                          (i32.load8_u
                            (i32.add
                              (i32.shr_u
                                (local.get $l10)
                                (i32.const 4))
                              (i32.const 65536))))
                        (local.set $l7
                          (i32.add
                            (local.get $l7)
                            (i32.const 1)))
                        (local.set $p2
                          (i32.add
                            (local.get $p2)
                            (i32.const 2)))
                        (br $L114))))
                  (local.set $p2
                    (i32.add
                      (local.get $p6)
                      (i32.const 8)))))
              (if $I116
                (select
                  (i32.eq
                    (local.get $l8)
                    (i32.const 41))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.stringFromBytes
                    (local.get $p2)
                    (local.get $l11)
                    (i32.const 32))
                  (drop
                    (br_if $B1
                      (i32.const 41)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I117
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=584
                    (local.get $p6)
                    (local.tee $p3
                      (i32.load offset=8
                        (local.get $p6))))
                  (i32.store offset=580
                    (local.get $p6)
                    (local.get $p3))
                  (local.set $l10
                    (i32.load offset=12
                      (local.get $p6))))))
            (if $I118
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=588
                  (local.get $p6)
                  (local.get $p3))))
            (if $I119
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 42))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (i32.const 140))
                (drop
                  (br_if $B1
                    (i32.const 42)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l7)))
            (if $I120
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=592
                  (local.get $p6)
                  (local.get $l7))))
            (if $I121
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 43))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (i32.const 40))
                (drop
                  (br_if $B1
                    (i32.const 43)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $p2)))
            (if $I122
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=600
                  (local.get $p6)
                  (local.get $p2))
                (i32.store offset=616
                  (local.get $p6)
                  (local.get $p2))
                (i32.store offset=596
                  (local.get $p6)
                  (local.get $p2))
                (local.set $l11
                  (call $runtime.fastrand))
                (i32.store
                  (i32.add
                    (local.get $p2)
                    (i32.const 36))
                  (i32.const 4))
                (i32.store
                  (i32.add
                    (local.get $p2)
                    (i32.const 28))
                  (i32.const 5))
                (i32.store8 offset=20
                  (local.get $p2)
                  (i32.const 0))
                (i64.store offset=12 align=4
                  (local.get $p2)
                  (i64.const 34359738376))
                (i32.store offset=4
                  (local.get $p2)
                  (local.get $l11))
                (i32.store
                  (local.get $p2)
                  (local.get $l7))))
            (if $I123
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 44))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (i32.const 8))
                (drop
                  (br_if $B1
                    (i32.const 44)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l7)))
            (if $I124
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=4
                  (local.get $l7)
                  (local.get $l10))
                (i32.store
                  (local.get $l7)
                  (local.get $p3))
                (i32.store offset=604
                  (local.get $p6)
                  (local.get $l7))
                (i32.store offset=608
                  (local.get $p6)
                  (local.get $l7))
                (i32.store offset=244
                  (local.get $p6)
                  (local.get $l7))
                (i32.store offset=240
                  (local.get $p6)
                  (i32.const 67000))
                (local.set $p3
                  (i32.add
                    (local.get $p6)
                    (i32.const 240)))))
            (if $I125
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 45))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.hashmapStringSet
                  (local.get $p2)
                  (i32.const 67477)
                  (i32.const 4)
                  (local.get $p3))
                (drop
                  (br_if $B1
                    (i32.const 45)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I126
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=612
                  (local.get $p6)
                  (local.tee $l7
                    (i32.and
                      (i32.xor
                        (local.get $l12)
                        (i32.const -1))
                      (i32.const 1))))
                (i32.store offset=244
                  (local.get $p6)
                  (local.get $l7))
                (i32.store offset=240
                  (local.get $p6)
                  (i32.const 66944))
                (local.set $p3
                  (i32.add
                    (local.get $p6)
                    (i32.const 240)))))
            (if $I127
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 46))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.hashmapStringSet
                  (local.get $p2)
                  (i32.const 67481)
                  (i32.const 7)
                  (local.get $p3))
                (drop
                  (br_if $B1
                    (i32.const 46)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I128
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store
                  (i32.const 68316)
                  (local.get $l13))
                (i32.store offset=4
                  (local.get $p0)
                  (local.get $p2))
                (i32.store
                  (local.get $p0)
                  (i32.const 67488))
                (global.set $__stack_pointer
                  (i32.add
                    (local.get $p6)
                    (i32.const 624)))
                (return))))
          (if $I129
            (select
              (i32.eq
                (local.get $l8)
                (i32.const 47))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.lookupPanic)
              (drop
                (br_if $B1
                  (i32.const 47)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I130
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I131
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 48))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.slicePanic)
            (drop
              (br_if $B1
                (i32.const 48)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I132
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l9))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l9
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l9)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l9)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l9)
      (local.get $p3))
    (i32.store offset=20
      (local.get $l9)
      (local.get $p4))
    (i32.store offset=24
      (local.get $l9)
      (local.get $p5))
    (i32.store offset=28
      (local.get $l9)
      (local.get $p6))
    (i32.store offset=32
      (local.get $l9)
      (local.get $l7))
    (i64.store offset=36 align=4
      (local.get $l9)
      (local.get $l14))
    (i64.store offset=44 align=4
      (local.get $l9)
      (local.get $l15))
    (i32.store offset=52
      (local.get $l9)
      (local.get $l10))
    (i32.store offset=56
      (local.get $l9)
      (local.get $l11))
    (i32.store offset=60
      (local.get $l9)
      (local.get $l13))
    (i32.store offset=64
      (local.get $l9)
      (local.get $l12))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 68))))
  (func $runtime.hashmapGet (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 52)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $p3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l4
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l9
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=36
            (local.get $p1)))
        (local.set $l11
          (i32.load offset=40
            (local.get $p1)))
        (local.set $l12
          (i32.load offset=44
            (local.get $p1)))
        (local.set $l13
          (i32.load offset=48
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l5
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l14
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 48))))
            (i64.store
              (i32.add
                (local.get $l4)
                (i32.const 32))
              (i64.const 0))
            (i32.store
              (i32.add
                (local.get $l4)
                (i32.const 40))
              (i32.const 0))
            (i64.store offset=24
              (local.get $l4)
              (i64.const 0))
            (i32.store offset=12
              (local.get $l4)
              (i32.const 7))
            (local.set $l9
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l4)
                (i32.const 8)))
            (i32.store offset=8
              (local.get $l4)
              (local.get $l9))
            (i32.store offset=16
              (local.get $l4)
              (local.tee $l6
                (call $runtime.hashmapBucketAddrForHash
                  (local.get $p0)
                  (local.get $p3))))
            (local.set $l10
              (select
                (local.tee $p3
                  (i32.shr_u
                    (local.get $p3)
                    (i32.const 24)))
                (i32.const 1)
                (local.get $p3)))))
        (block $B4
          (block $B5
            (loop $L6
              (block $B7
                (if $I8
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=20
                      (local.get $l4)
                      (local.get $l6))
                    (br_if $B7
                      (i32.eqz
                        (local.get $l6)))
                    (local.set $p3
                      (i32.const 0))))
                (loop $L9
                  (block $B10
                    (if $I11
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (br_if $B10
                          (local.tee $l7
                            (i32.eq
                              (local.get $p3)
                              (i32.const 8))))
                        (i32.store offset=24
                          (local.get $l4)
                          (local.tee $l11
                            (i32.add
                              (i32.add
                                (local.get $l6)
                                (i32.mul
                                  (local.tee $l7
                                    (i32.load offset=12
                                      (local.get $p0)))
                                  (local.get $p3)))
                              (i32.const 12))))
                        (i32.store offset=28
                          (local.get $l4)
                          (local.tee $l12
                            (i32.add
                              (i32.add
                                (local.get $l6)
                                (i32.add
                                  (i32.mul
                                    (i32.load offset=16
                                      (local.get $p0))
                                    (local.get $p3))
                                  (i32.shl
                                    (local.get $l7)
                                    (i32.const 3))))
                              (i32.const 12))))
                        (local.set $l8
                          (i32.ne
                            (local.get $l10)
                            (i32.load8_u
                              (i32.add
                                (local.get $p3)
                                (local.get $l6)))))))
                    (block $B12
                      (if $I13
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B12
                            (local.get $l8))
                          (i32.store offset=32
                            (local.get $l4)
                            (local.tee $l13
                              (i32.load offset=24
                                (local.get $p0))))
                          (i32.store offset=36
                            (local.get $l4)
                            (local.tee $l8
                              (i32.load offset=28
                                (local.get $p0))))
                          (br_if $B4
                            (i32.eqz
                              (local.get $l8)))))
                      (if $I14
                        (i32.eqz
                          (select
                            (local.get $l14)
                            (i32.const 0)
                            (global.get $g1)))
                        (then
                          (call_indirect $T0 (type $t2)
                            (local.get $p1)
                            (local.get $l11)
                            (local.get $l7)
                            (local.get $l13)
                            (local.get $l8))
                          (drop
                            (br_if $B1
                              (i32.const 0)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))
                          (local.set $l7)))
                      (if $I15
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B12
                            (local.tee $l7
                              (i32.eqz
                                (i32.and
                                  (local.get $l7)
                                  (i32.const 1)))))
                          (memory.copy
                            (local.get $p2)
                            (local.get $l12)
                            (i32.load offset=16
                              (local.get $p0)))
                          (br $B5))))
                    (if $I16
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (local.set $p3
                          (i32.add
                            (local.get $p3)
                            (i32.const 1)))
                        (br $L9)))))
                (if $I17
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=40
                      (local.get $l4)
                      (local.tee $l6
                        (i32.load offset=8
                          (local.get $l6))))
                    (br $L6)))))
            (if $I18
              (i32.eqz
                (global.get $g1))
              (then
                (memory.fill
                  (local.get $p2)
                  (i32.const 0)
                  (i32.load offset=16
                    (local.get $p0))))))
          (if $I19
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store
                (i32.const 68316)
                (local.get $l9))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l4)
                  (i32.const 48)))
              (return
                (i32.ne
                  (local.get $l6)
                  (i32.const 0))))))
        (if $I20
          (select
            (i32.eq
              (local.get $l14)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.nilPanic)
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I21
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l5
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l5)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l5)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l5)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l5)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l5)
      (local.get $l9))
    (i32.store offset=36
      (local.get $l5)
      (local.get $l10))
    (i32.store offset=40
      (local.get $l5)
      (local.get $l11))
    (i32.store offset=44
      (local.get $l5)
      (local.get $l12))
    (i32.store offset=48
      (local.get $l5)
      (local.get $l13))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 52)))
    (i32.const 0))
  (func $runtime.hashmapBucketAddrForHash (type $t10) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.add
      (i32.load
        (local.get $p0))
      (i32.mul
        (i32.add
          (i32.shl
            (i32.add
              (i32.load offset=16
                (local.get $p0))
              (i32.load offset=12
                (local.get $p0)))
            (i32.const 3))
          (i32.const 12))
        (i32.and
          (select
            (i32.const -1)
            (i32.xor
              (i32.shl
                (i32.const -1)
                (local.tee $p0
                  (i32.load8_u offset=20
                    (local.get $p0))))
              (i32.const -1))
            (i32.gt_u
              (local.get $p0)
              (i32.const 31)))
          (local.get $p1)))))
  (func $runtime.nilMapPanic (type $t0)
    (call $byn$mgfn-shared$runtime.nilPanic
      (i32.const 30)
      (i32.const 66145)))
  (func $runtime.hashmapSet (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.add
            (i32.load
              (global.get $g2))
            (i32.const -64)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $p3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l4
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l5
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l9
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=36
            (local.get $p1)))
        (local.set $l12
          (i32.load offset=40
            (local.get $p1)))
        (local.set $l13
          (i32.load offset=44
            (local.get $p1)))
        (local.set $l14
          (i32.load offset=48
            (local.get $p1)))
        (local.set $l15
          (i32.load offset=52
            (local.get $p1)))
        (local.set $l16
          (i32.load offset=56
            (local.get $p1)))
        (local.set $l17
          (i32.load offset=60
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l7
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l11
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 240))))
            (i32.store offset=76
              (local.get $l4)
              (i32.const 39))
            (memory.fill
              (i32.add
                (local.get $l4)
                (i32.const 80))
              (i32.const 0)
              (i32.const 156))
            (i32.store offset=72
              (local.get $l4)
              (local.tee $l17
                (i32.load
                  (i32.const 68316))))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l4)
                (i32.const 72)))
            (local.set $l5
              (i32.eqz
                (local.get $p0)))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l5))
                (local.set $l5
                  (i32.gt_u
                    (local.tee $l8
                      (i32.load8_u offset=20
                        (local.get $p0)))
                    (i32.const 29)))))
            (block $B7
              (if $I8
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B7
                    (local.get $l5))
                  (br_if $B7
                    (local.tee $l5
                      (i32.le_u
                        (local.tee $l6
                          (i32.load offset=8
                            (local.get $p0)))
                        (i32.shl
                          (i32.const 6)
                          (local.get $l8)))))
                  (i64.store offset=48
                    (local.get $l4)
                    (i64.const 0))
                  (i32.store offset=48
                    (local.get $l4)
                    (i32.load offset=16
                      (local.get $p0)))
                  (i32.store offset=96
                    (local.get $l4)
                    (local.tee $l5
                      (i32.load offset=36
                        (local.get $p0))))
                  (i32.store offset=92
                    (local.get $l4)
                    (local.tee $l8
                      (i32.load offset=32
                        (local.get $p0))))
                  (i32.store offset=88
                    (local.get $l4)
                    (local.tee $p3
                      (i32.load offset=28
                        (local.get $p0))))
                  (i32.store offset=84
                    (local.get $l4)
                    (local.tee $l9
                      (i32.load offset=24
                        (local.get $p0))))
                  (i32.store offset=80
                    (local.get $l4)
                    (i32.load
                      (local.get $p0)))
                  (i32.store offset=68
                    (local.get $l4)
                    (local.get $l5))
                  (i32.store offset=64
                    (local.get $l4)
                    (local.get $l8))
                  (i32.store offset=60
                    (local.get $l4)
                    (local.get $p3))
                  (i32.store offset=56
                    (local.get $l4)
                    (local.get $l9))
                  (i32.store offset=44
                    (local.get $l4)
                    (i32.load offset=12
                      (local.get $p0)))
                  (i32.store offset=40
                    (local.get $l4)
                    (i32.const 0))
                  (i32.store offset=36
                    (local.get $l4)
                    (call $runtime.fastrand))
                  (i32.store8 offset=52
                    (local.get $l4)
                    (local.tee $p3
                      (i32.add
                        (i32.load8_u offset=20
                          (local.get $p0))
                        (i32.const 1))))
                  (local.set $p3
                    (i32.mul
                      (local.tee $l5
                        (i32.add
                          (i32.shl
                            (i32.add
                              (i32.load offset=16
                                (local.get $p0))
                              (i32.load offset=12
                                (local.get $p0)))
                            (i32.const 3))
                          (i32.const 12)))
                      (select
                        (local.tee $l6
                          (i32.shl
                            (i32.const 1)
                            (local.tee $p3
                              (i32.and
                                (local.get $p3)
                                (i32.const 255)))))
                        (i32.const 0)
                        (i32.le_u
                          (local.get $p3)
                          (i32.const 31)))))))
              (if $I9
                (i32.eqz
                  (select
                    (local.get $l11)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call $runtime.alloc
                    (local.get $p3))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p3)))
              (if $I10
                (i32.eqz
                  (global.get $g1))
                (then
                  (i64.store
                    (i32.add
                      (local.get $l4)
                      (i32.const 16))
                    (i64.const 0))
                  (i32.store
                    (local.tee $l5
                      (i32.add
                        (local.get $l4)
                        (i32.const 24)))
                    (i32.const 0))
                  (i32.store offset=32
                    (local.get $l4)
                    (local.get $p3))
                  (i32.store offset=100
                    (local.get $l4)
                    (local.get $p3))
                  (i64.store offset=8
                    (local.get $l4)
                    (i64.const 0))
                  (local.set $p3
                    (i32.load offset=12
                      (local.get $p0)))))
              (if $I11
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 1))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (local.get $p3))
                  (drop
                    (br_if $B1
                      (i32.const 1)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p3)))
              (if $I12
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=104
                    (local.get $l4)
                    (local.get $p3))
                  (local.set $l5
                    (i32.load offset=16
                      (local.get $p0)))))
              (if $I13
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 2))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (local.get $l5))
                  (drop
                    (br_if $B1
                      (i32.const 2)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l5)))
              (if $I14
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=108
                    (local.get $l4)
                    (local.get $l5))))
              (loop $L15
                (block $B16
                  (local.set $l6
                    (select
                      (local.get $l6)
                      (i32.add
                        (local.get $l4)
                        (i32.const 8))
                      (global.get $g1)))
                  (if $I17
                    (select
                      (i32.eq
                        (local.get $l11)
                        (i32.const 3))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.hashmapNext
                        (local.get $p0)
                        (local.get $l6)
                        (local.get $p3)
                        (local.get $l5))
                      (drop
                        (br_if $B1
                          (i32.const 3)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $l6)))
                  (if $I18
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (br_if $B16
                        (local.tee $l6
                          (i32.eqz
                            (i32.and
                              (local.get $l6)
                              (i32.const 1)))))
                      (i32.store offset=112
                        (local.get $l4)
                        (local.tee $l9
                          (i32.load offset=64
                            (local.get $l4))))
                      (i32.store offset=116
                        (local.get $l4)
                        (local.tee $l8
                          (i32.load offset=68
                            (local.get $l4))))
                      (br_if $B5
                        (i32.eqz
                          (local.get $l8)))
                      (local.set $l10
                        (i32.load offset=44
                          (local.get $l4)))
                      (local.set $l12
                        (i32.load offset=36
                          (local.get $l4)))
                      (local.set $l6
                        (i32.add
                          (local.get $l4)
                          (i32.const 32)))))
                  (if $I19
                    (select
                      (i32.eq
                        (local.get $l11)
                        (i32.const 4))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call_indirect $T0 (type $t2)
                        (local.get $p3)
                        (local.get $l10)
                        (local.get $l12)
                        (local.get $l9)
                        (local.get $l8))
                      (drop
                        (br_if $B1
                          (i32.const 4)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $l8)))
                  (if $I20
                    (select
                      (i32.eq
                        (local.get $l11)
                        (i32.const 5))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.hashmapSet
                        (local.get $l6)
                        (local.get $p3)
                        (local.get $l5)
                        (local.get $l8))
                      (drop
                        (br_if $B1
                          (i32.const 5)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (br_if $L15
                    (i32.eqz
                      (global.get $g1)))))
              (if $I21
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store
                    (local.get $p0)
                    (local.tee $l8
                      (i32.load offset=32
                        (local.get $l4))))
                  (i64.store offset=4 align=4
                    (local.get $p0)
                    (i64.load offset=36 align=4
                      (local.get $l4)))
                  (i64.store offset=12 align=4
                    (local.get $p0)
                    (i64.load offset=44 align=4
                      (local.get $l4)))
                  (i32.store8 offset=20
                    (local.get $p0)
                    (i32.load8_u offset=52
                      (local.get $l4)))
                  (i32.store offset=24
                    (local.get $p0)
                    (local.tee $p3
                      (i32.load offset=56
                        (local.get $l4))))
                  (i32.store offset=28
                    (local.get $p0)
                    (local.tee $l5
                      (i32.load offset=60
                        (local.get $l4))))
                  (i32.store offset=32
                    (local.get $p0)
                    (local.tee $l9
                      (i32.load offset=64
                        (local.get $l4))))
                  (i32.store
                    (local.tee $l10
                      (i32.add
                        (local.get $p0)
                        (i32.const 36)))
                    (local.tee $l6
                      (i32.load offset=68
                        (local.get $l4))))
                  (i32.store offset=120
                    (local.get $l4)
                    (local.get $l8))
                  (i32.store offset=124
                    (local.get $l4)
                    (local.get $p3))
                  (i32.store offset=128
                    (local.get $l4)
                    (local.get $l5))
                  (i32.store offset=132
                    (local.get $l4)
                    (local.get $l9))
                  (i32.store offset=136
                    (local.get $l4)
                    (local.get $l6))
                  (i32.store offset=140
                    (local.get $l4)
                    (local.tee $l8
                      (i32.load offset=32
                        (local.get $p0))))
                  (i32.store offset=144
                    (local.get $l4)
                    (local.tee $p3
                      (i32.load
                        (local.get $l10))))
                  (br_if $B5
                    (i32.eqz
                      (local.get $p3)))
                  (local.set $l6
                    (i32.load offset=4
                      (local.get $p0)))
                  (local.set $l5
                    (i32.load offset=12
                      (local.get $p0)))))
              (if $I22
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 6))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call_indirect $T0 (type $t2)
                    (local.get $p1)
                    (local.get $l5)
                    (local.get $l6)
                    (local.get $l8)
                    (local.get $p3))
                  (drop
                    (br_if $B1
                      (i32.const 6)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $p3))))
            (if $I23
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=148
                  (local.get $l4)
                  (local.tee $l6
                    (call $runtime.hashmapBucketAddrForHash
                      (local.get $p0)
                      (local.get $p3))))
                (local.set $l13
                  (select
                    (local.tee $p3
                      (i32.shr_u
                        (local.get $p3)
                        (i32.const 24)))
                    (i32.const 1)
                    (local.get $p3)))
                (local.set $l8
                  (i32.const 0))
                (local.set $l10
                  (i32.const 0))
                (local.set $l9
                  (i32.const 0))
                (local.set $p3
                  (i32.const 0))))
            (loop $L24
              (block $B25
                (if $I26
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=164
                      (local.get $l4)
                      (local.get $p3))
                    (i32.store offset=168
                      (local.get $l4)
                      (local.tee $l5
                        (local.get $l6)))
                    (i32.store offset=160
                      (local.get $l4)
                      (local.get $l8))
                    (i32.store offset=156
                      (local.get $l4)
                      (local.get $l10))
                    (i32.store offset=152
                      (local.get $l4)
                      (local.get $l9))
                    (br_if $B25
                      (local.tee $l6
                        (i32.eqz
                          (local.get $l5))))
                    (local.set $p3
                      (i32.const 0))))
                (loop $L27
                  (block $B28
                    (if $I29
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (i32.store offset=176
                          (local.get $l4)
                          (local.get $l10))
                        (i32.store offset=180
                          (local.get $l4)
                          (local.get $l8))
                        (i32.store offset=172
                          (local.get $l4)
                          (local.get $l9))
                        (br_if $B28
                          (i32.eq
                            (local.get $p3)
                            (i32.const 8)))
                        (i32.store offset=184
                          (local.get $l4)
                          (local.tee $l15
                            (i32.add
                              (i32.add
                                (i32.mul
                                  (local.tee $l14
                                    (i32.load offset=12
                                      (local.get $p0)))
                                  (local.get $p3))
                                (local.get $l5))
                              (i32.const 12))))
                        (i32.store offset=188
                          (local.get $l4)
                          (local.tee $l16
                            (i32.add
                              (i32.add
                                (i32.add
                                  (i32.mul
                                    (i32.load offset=16
                                      (local.get $p0))
                                    (local.get $p3))
                                  (i32.shl
                                    (local.get $l14)
                                    (i32.const 3)))
                                (local.get $l5))
                              (i32.const 12))))
                        (i32.store offset=200
                          (local.get $l4)
                          (local.tee $l8
                            (select
                              (local.get $l8)
                              (local.get $l15)
                              (local.tee $l12
                                (i32.or
                                  (i32.load8_u
                                    (local.tee $l6
                                      (i32.add
                                        (local.get $p3)
                                        (local.get $l5))))
                                  (local.get $l8))))))
                        (i32.store offset=192
                          (local.get $l4)
                          (local.tee $l9
                            (select
                              (local.get $l9)
                              (local.get $l6)
                              (local.get $l12))))
                        (i32.store offset=196
                          (local.get $l4)
                          (local.tee $l10
                            (select
                              (local.get $l10)
                              (local.get $l16)
                              (local.get $l12))))
                        (local.set $l6
                          (i32.ne
                            (local.get $l13)
                            (i32.load8_u
                              (local.get $l6))))))
                    (block $B30
                      (if $I31
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B30
                            (local.get $l6))
                          (i32.store offset=204
                            (local.get $l4)
                            (local.tee $l12
                              (i32.load offset=24
                                (local.get $p0))))
                          (i32.store offset=208
                            (local.get $l4)
                            (local.tee $l6
                              (i32.load offset=28
                                (local.get $p0))))
                          (br_if $B5
                            (i32.eqz
                              (local.get $l6)))))
                      (if $I32
                        (select
                          (i32.eq
                            (local.get $l11)
                            (i32.const 7))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call_indirect $T0 (type $t2)
                            (local.get $p1)
                            (local.get $l15)
                            (local.get $l14)
                            (local.get $l12)
                            (local.get $l6))
                          (drop
                            (br_if $B1
                              (i32.const 7)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))
                          (local.set $l6)))
                      (if $I33
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (br_if $B30
                            (local.tee $l6
                              (i32.eqz
                                (i32.and
                                  (local.get $l6)
                                  (i32.const 1)))))
                          (memory.copy
                            (local.get $l16)
                            (local.get $p2)
                            (i32.load offset=16
                              (local.get $p0)))
                          (br $B4))))
                    (if $I34
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (local.set $p3
                          (i32.add
                            (local.get $p3)
                            (i32.const 1)))
                        (br $L27)))))
                (if $I35
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=212
                      (local.get $l4)
                      (local.tee $l6
                        (i32.load offset=8
                          (local.get $l5))))
                    (local.set $p3
                      (local.get $l5))
                    (br $L24)))))
            (block $B36
              (if $I37
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B36
                    (local.get $l8))
                  (local.set $l5
                    (i32.add
                      (i32.shl
                        (i32.add
                          (i32.load offset=16
                            (local.get $p0))
                          (i32.load offset=12
                            (local.get $p0)))
                        (i32.const 3))
                      (i32.const 12)))))
              (if $I38
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 8))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.alloc
                    (local.get $l5))
                  (drop
                    (br_if $B1
                      (i32.const 8)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l8)))
              (if $I39
                (i32.eqz
                  (global.get $g1))
                (then
                  (i32.store offset=8
                    (local.get $p0)
                    (i32.add
                      (i32.load offset=8
                        (local.get $p0))
                      (i32.const 1)))
                  (i32.store offset=220
                    (local.get $l4)
                    (local.get $l8))
                  (i32.store offset=232
                    (local.get $l4)
                    (local.get $l8))
                  (i32.store offset=216
                    (local.get $l4)
                    (local.get $l8))
                  (i32.store offset=224
                    (local.get $l4)
                    (local.tee $l5
                      (i32.add
                        (local.get $l8)
                        (i32.const 12))))
                  (i32.store offset=228
                    (local.get $l4)
                    (local.tee $l10
                      (i32.add
                        (i32.shl
                          (local.tee $l9
                            (i32.load offset=12
                              (local.get $p0)))
                          (i32.const 3))
                        (local.get $l5))))
                  (memory.copy
                    (local.get $l5)
                    (local.get $p1)
                    (local.get $l9))
                  (memory.copy
                    (local.get $l10)
                    (local.get $p2)
                    (i32.load offset=16
                      (local.get $p0)))
                  (i32.store8
                    (local.get $l8)
                    (local.get $l13))
                  (br_if $B5
                    (i32.eqz
                      (local.get $p3)))
                  (i32.store offset=8
                    (local.get $p3)
                    (local.get $l8))
                  (br $B4))))
            (if $I40
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=8
                  (local.get $p0)
                  (i32.add
                    (i32.load offset=8
                      (local.get $p0))
                    (i32.const 1)))
                (memory.copy
                  (local.get $l8)
                  (local.get $p1)
                  (i32.load offset=12
                    (local.get $p0)))
                (memory.copy
                  (local.get $l10)
                  (local.get $p2)
                  (i32.load offset=16
                    (local.get $p0)))
                (br_if $B5
                  (i32.eqz
                    (local.get $l9)))
                (i32.store8
                  (local.get $l9)
                  (local.get $l13))
                (br $B4))))
          (if $I41
            (select
              (i32.eq
                (local.get $l11)
                (i32.const 9))
              (i32.const 1)
              (global.get $g1))
            (then
              (call $runtime.nilPanic)
              (drop
                (br_if $B1
                  (i32.const 9)
                  (i32.eq
                    (global.get $g1)
                    (i32.const 1))))))
          (if $I42
            (i32.eqz
              (global.get $g1))
            (then
              (unreachable))))
        (if $I43
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l17))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l4)
                (i32.const 240)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l7
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l7)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l7)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l7)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l7)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l7)
      (local.get $l5))
    (i32.store offset=24
      (local.get $l7)
      (local.get $l6))
    (i32.store offset=28
      (local.get $l7)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l7)
      (local.get $l9))
    (i32.store offset=36
      (local.get $l7)
      (local.get $l10))
    (i32.store offset=40
      (local.get $l7)
      (local.get $l12))
    (i32.store offset=44
      (local.get $l7)
      (local.get $l13))
    (i32.store offset=48
      (local.get $l7)
      (local.get $l14))
    (i32.store offset=52
      (local.get $l7)
      (local.get $l15))
    (i32.store offset=56
      (local.get $l7)
      (local.get $l16))
    (i32.store offset=60
      (local.get $l7)
      (local.get $l17))
    (i32.store
      (global.get $g2)
      (i32.sub
        (i32.load
          (global.get $g2))
        (i32.const -64))))
  (func $runtime.fastrand (type $t9) (result i32)
    (local $l0 i32)
    (i32.store
      (i32.const 68028)
      (local.tee $l0
        (i32.xor
          (i32.shl
            (local.tee $l0
              (i32.xor
                (i32.shr_u
                  (local.tee $l0
                    (i32.xor
                      (i32.shl
                        (local.tee $l0
                          (i32.load
                            (i32.const 68028)))
                        (i32.const 7))
                      (local.get $l0)))
                  (i32.const 1))
                (local.get $l0)))
            (i32.const 9))
          (local.get $l0))))
    (local.get $l0))
  (func $runtime.hashmapNext (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 44)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $p3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l4
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l5
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l9
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=36
            (local.get $p1)))
        (local.set $l12
          (i32.load offset=40
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l6
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l11
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l5
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 80))))
            (i32.store offset=12
              (local.get $l5)
              (i32.const 16))
            (memory.fill
              (i32.add
                (local.get $l5)
                (i32.const 16))
              (i32.const 0)
              (i32.const 64))
            (i32.store offset=8
              (local.get $l5)
              (local.tee $l12
                (i32.load
                  (i32.const 68316))))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l5)
                (i32.const 8)))
            (local.set $l7
              (i32.const 0))
            (local.set $l4
              (i32.eqz
                (local.get $p0)))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l4))
                (br_if $B4
                  (i32.eqz
                    (local.get $p1)))
                (i32.store offset=16
                  (local.get $l5)
                  (local.tee $l4
                    (i32.load
                      (local.get $p1))))
                (if $I7
                  (i32.eqz
                    (local.get $l4))
                  (then
                    (i32.store
                      (local.get $p1)
                      (local.tee $l4
                        (i32.load
                          (local.get $p0))))
                    (i32.store offset=4
                      (local.get $p1)
                      (local.tee $l8
                        (select
                          (local.tee $l7
                            (i32.shl
                              (i32.const 1)
                              (local.tee $l6
                                (i32.load8_u offset=20
                                  (local.get $p0)))))
                          (i32.const 0)
                          (i32.le_u
                            (local.get $l6)
                            (i32.const 31)))))
                    (i32.store offset=20
                      (local.get $l5)
                      (local.get $l4))))))
            (loop $L8
              (if $I9
                (i32.eqz
                  (global.get $g1))
                (then
                  (block $B10
                    (if $I11
                      (i32.le_u
                        (local.tee $l8
                          (i32.load8_u offset=16
                            (local.get $p1)))
                        (i32.const 7))
                      (then
                        (local.set $l4
                          (i32.load offset=12
                            (local.get $p1)))
                        (br $B10)))
                    (i32.store8 offset=16
                      (local.get $p1)
                      (i32.const 0))
                    (i32.store offset=24
                      (local.get $l5)
                      (local.tee $l4
                        (i32.load offset=12
                          (local.get $p1))))
                    (br_if $B4
                      (i32.eqz
                        (local.get $l4)))
                    (i32.store offset=12
                      (local.get $p1)
                      (local.tee $l4
                        (i32.load offset=8
                          (local.get $l4))))
                    (i32.store offset=28
                      (local.get $l5)
                      (local.get $l4))
                    (local.set $l8
                      (i32.const 0)))
                  (i32.store offset=32
                    (local.get $l5)
                    (local.get $l4))
                  (block $B12
                    (if $I13
                      (local.get $l4)
                      (then
                        (i32.store offset=44
                          (local.get $l5)
                          (local.get $l4))
                        (br $B12)))
                    (if $I14
                      (i32.ge_u
                        (local.tee $l4
                          (i32.load offset=8
                            (local.get $p1)))
                        (i32.load offset=4
                          (local.get $p1)))
                      (then
                        (local.set $l7
                          (i32.const 0))
                        (br $B5)))
                    (local.set $l7
                      (i32.load offset=12
                        (local.get $p0)))
                    (local.set $l9
                      (i32.load offset=16
                        (local.get $p0)))
                    (i32.store offset=8
                      (local.get $p1)
                      (i32.add
                        (local.get $l4)
                        (i32.const 1)))
                    (i32.store offset=12
                      (local.get $p1)
                      (local.tee $l4
                        (i32.add
                          (local.tee $l10
                            (i32.load
                              (local.get $p1)))
                          (i32.mul
                            (i32.add
                              (i32.shl
                                (i32.add
                                  (local.get $l7)
                                  (local.get $l9))
                                (i32.const 3))
                              (i32.const 12))
                            (local.get $l4)))))
                    (i32.store offset=36
                      (local.get $l5)
                      (local.get $l10))
                    (i32.store offset=40
                      (local.get $l5)
                      (local.get $l4))
                    (i32.store offset=44
                      (local.get $l5)
                      (local.get $l4))
                    (br_if $B4
                      (i32.eqz
                        (local.get $l4))))
                  (if $I15
                    (i32.eqz
                      (local.tee $l7
                        (i32.load8_u
                          (i32.add
                            (local.get $l4)
                            (local.get $l8)))))
                    (then
                      (i32.store8 offset=16
                        (local.get $p1)
                        (local.tee $l4
                          (i32.add
                            (local.get $l8)
                            (i32.const 1))))
                      (br $L8)))
                  (local.set $l7
                    (i32.load offset=12
                      (local.get $p0)))
                  (i32.store offset=48
                    (local.get $l5)
                    (local.get $l4))
                  (i32.store offset=52
                    (local.get $l5)
                    (local.tee $l4
                      (i32.add
                        (i32.add
                          (i32.mul
                            (local.get $l7)
                            (local.get $l8))
                          (local.get $l4))
                        (i32.const 12))))
                  (memory.copy
                    (local.get $p2)
                    (local.get $l4)
                    (local.get $l7))
                  (i32.store offset=56
                    (local.get $l5)
                    (local.tee $l4
                      (i32.load
                        (local.get $p1))))
                  (i32.store offset=60
                    (local.get $l5)
                    (local.tee $l8
                      (i32.load
                        (local.get $p0))))
                  (if $I16
                    (i32.eq
                      (local.get $l4)
                      (local.get $l8))
                    (then
                      (i32.store offset=64
                        (local.get $l5)
                        (local.tee $l4
                          (i32.load offset=12
                            (local.get $p1))))
                      (i32.store offset=68
                        (local.get $l5)
                        (local.tee $l4
                          (i32.add
                            (i32.add
                              (local.get $l4)
                              (i32.add
                                (i32.shl
                                  (i32.load offset=12
                                    (local.get $p0))
                                  (i32.const 3))
                                (i32.mul
                                  (local.tee $p0
                                    (i32.load offset=16
                                      (local.get $p0)))
                                  (i32.load8_u offset=16
                                    (local.get $p1)))))
                            (i32.const 12))))
                      (memory.copy
                        (local.get $p3)
                        (local.get $l4)
                        (local.get $p0))
                      (local.set $l7
                        (i32.const 1))
                      (i32.store8 offset=16
                        (local.get $p1)
                        (i32.add
                          (i32.load8_u offset=16
                            (local.get $p1))
                          (i32.const 1)))
                      (br $B5)))
                  (i32.store8 offset=16
                    (local.get $p1)
                    (i32.add
                      (i32.load8_u offset=16
                        (local.get $p1))
                      (i32.const 1)))
                  (i32.store offset=72
                    (local.get $l5)
                    (local.tee $l8
                      (i32.load offset=32
                        (local.get $p0))))
                  (i32.store offset=76
                    (local.get $l5)
                    (local.tee $l4
                      (i32.load offset=36
                        (local.get $p0))))
                  (br_if $B4
                    (i32.eqz
                      (local.get $l4)))
                  (local.set $l9
                    (i32.load offset=4
                      (local.get $p0)))
                  (local.set $l10
                    (i32.load offset=12
                      (local.get $p0)))
                  (local.set $l7
                    (i32.const 1))))
              (if $I17
                (i32.eqz
                  (select
                    (local.get $l11)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call_indirect $T0 (type $t2)
                    (local.get $p2)
                    (local.get $l10)
                    (local.get $l9)
                    (local.get $l8)
                    (local.get $l4))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l4)))
              (if $I18
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 1))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime.hashmapGet
                    (local.get $p0)
                    (local.get $p2)
                    (local.get $p3)
                    (local.get $l4))
                  (drop
                    (br_if $B1
                      (i32.const 1)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l4)))
              (if $I19
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $L8
                    (local.tee $l4
                      (i32.eqz
                        (i32.and
                          (local.get $l4)
                          (i32.const 1)))))))))
          (if $I20
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store
                (i32.const 68316)
                (local.get $l12))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l5)
                  (i32.const 80)))
              (return
                (local.get $l7)))))
        (if $I21
          (select
            (i32.eq
              (local.get $l11)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.nilPanic)
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I22
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l6
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l6)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l6)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l6)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l6)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l6)
      (local.get $l5))
    (i32.store offset=24
      (local.get $l6)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l6)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l6)
      (local.get $l9))
    (i32.store offset=36
      (local.get $l6)
      (local.get $l10))
    (i32.store offset=40
      (local.get $l6)
      (local.get $l12))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 44)))
    (i32.const 0))
  (func $runtime.hashmapStringEqual (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32)
    (local.set $p3
      (i32.const 0))
    (block $B0
      (br_if $B0
        (i32.ne
          (local.tee $l4
            (i32.load offset=4
              (local.get $p0)))
          (i32.load offset=4
            (local.get $p1))))
      (local.set $p2
        (i32.load
          (local.get $p1)))
      (local.set $p0
        (i32.load
          (local.get $p0)))
      (local.set $p1
        (select
          (local.get $l4)
          (i32.const 0)
          (i32.gt_s
            (local.get $l4)
            (i32.const 0))))
      (loop $L1
        (local.set $p3
          (i32.eqz
            (local.get $p1)))
        (br_if $B0
          (i32.eqz
            (local.get $p1)))
        (local.set $p1
          (i32.sub
            (local.get $p1)
            (i32.const 1)))
        (i32.load8_u
          (local.get $p2))
        (i32.load8_u
          (local.get $p0))
        (local.set $p2
          (i32.add
            (local.get $p2)
            (i32.const 1)))
        (local.set $p0
          (i32.add
            (local.get $p0)
            (i32.const 1)))
        (br_if $L1
          (i32.eq))))
    (local.get $p3))
  (func $runtime.hashmapStringPtrHash (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (call $runtime.hash32
      (i32.load
        (local.get $p0))
      (i32.load offset=4
        (local.get $p0))
      (local.get $p2)
      (local.get $p0)))
  (func $runtime.hashmapStringSet (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 28)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $p3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l5
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l4
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l8
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l5
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 16))))
            (i32.store offset=4
              (local.get $l5)
              (i32.const 2))
            (local.set $l7
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.get $l5))
            (i32.store
              (local.get $l5)
              (local.get $l7))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l8)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.alloc
              (i32.const 8))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l6)))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=4
              (local.get $l6)
              (local.get $p2))
            (i32.store
              (local.get $l6)
              (local.get $p1))
            (i32.store offset=8
              (local.get $l5)
              (local.get $l6))
            (i32.store offset=12
              (local.get $l5)
              (local.get $l6))))
        (if $I6
          (select
            (global.get $g1)
            (i32.const 1)
            (local.get $p0))
          (then
            (if $I7
              (select
                (i32.eq
                  (local.get $l8)
                  (i32.const 1))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.nilMapPanic)
                (drop
                  (br_if $B1
                    (i32.const 1)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I8
              (i32.eqz
                (global.get $g1))
              (then
                (unreachable)))))
        (if $I9
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $p1
              (call $runtime.hash32
                (local.get $p1)
                (local.get $p2)
                (i32.load offset=4
                  (local.get $p0))
                (local.get $l5)))))
        (if $I10
          (select
            (i32.eq
              (local.get $l8)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.hashmapSet
              (local.get $p0)
              (local.get $l6)
              (local.get $p3)
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l7))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l5)
                (i32.const 16)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l4))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l4
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l4)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l4)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p3))
    (i32.store offset=16
      (local.get $l4)
      (local.get $l5))
    (i32.store offset=20
      (local.get $l4)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l4)
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 28))))
  (func $_syscall/js.Value_.Bool (type $t5) (param $p0 i64) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 16)))
        (local.set $p0
          (i64.load align=4
            (local.tee $l1
              (i32.load
                (global.get $g2)))))
        (local.set $l2
          (i32.load offset=12
            (local.get $l1)))
        (local.set $l1
          (i32.load offset=8
            (local.get $l1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l4
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l1
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 16))))
            (i32.store offset=12
              (local.get $l1)
              (i32.const 0))
            (i64.store offset=4 align=4
              (local.get $l1)
              (i64.const 2))
            (local.set $l2
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (local.get $l1))
            (i32.store
              (local.get $l1)
              (local.get $l2))
            (if $I4
              (i64.le_u
                (i64.sub
                  (local.get $p0)
                  (i64.const 9221120237041090563))
                (i64.const 1))
              (then
                (i32.store
                  (i32.const 68316)
                  (local.get $l2))
                (global.set $__stack_pointer
                  (i32.add
                    (local.get $l1)
                    (i32.const 16)))
                (return
                  (i64.eq
                    (local.get $p0)
                    (i64.const 9221120237041090563)))))))
        (if $I5
          (i32.eqz
            (select
              (local.get $l4)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.alloc
              (i32.const 12))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l2)))
        (if $I6
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=8
              (local.get $l1)
              (local.get $l2))
            (i32.store offset=12
              (local.get $l1)
              (local.get $l2))))
        (if $I7
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Type
              (local.get $p0))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l1)))
        (if $I8
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=8
              (local.get $l2)
              (local.get $l1))
            (i32.store offset=4
              (local.get $l2)
              (i32.const 10))
            (i32.store
              (local.get $l2)
              (i32.const 66421))))
        (if $I9
          (select
            (i32.eq
              (local.get $l4)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime._panic
              (i32.const 67924)
              (local.get $l2))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I10
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l3)
      (local.get $l1))
    (i32.store offset=12
      (local.get $l3)
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 16)))
    (i32.const 0))
  (func $syscall/js.jsString (type $t8) (param $p0 i32) (param $p1 i64) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 40)))
        (local.set $p0
          (i32.load
            (local.tee $l3
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=12
            (local.get $l3)))
        (local.set $l4
          (i32.load offset=16
            (local.get $l3)))
        (local.set $l5
          (i32.load offset=20
            (local.get $l3)))
        (local.set $l6
          (i32.load offset=24
            (local.get $l3)))
        (local.set $l8
          (i32.load offset=28
            (local.get $l3)))
        (local.set $l9
          (i64.load offset=32 align=4
            (local.get $l3)))
        (local.set $p1
          (i64.load offset=4 align=4
            (local.get $l3)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l7
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 48))))
            (i64.store
              (i32.add
                (local.get $l4)
                (i32.const 40))
              (i64.const 0))
            (i64.store offset=32
              (local.get $l4)
              (i64.const 0))
            (i32.store offset=28
              (local.get $l4)
              (i32.const 4))
            (local.set $l8
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l4)
                (i32.const 24)))
            (i32.store offset=24
              (local.get $l4)
              (local.get $l8))
            (local.set $l5
              (i32.add
                (local.get $l4)
                (i32.const 8)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l7)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $syscall/js.valuePrepareString
              (local.get $l5)
              (local.get $p1))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (local.set $l9
              (i64.load offset=8
                (local.get $l4)))
            (local.set $l6
              (i32.load offset=16
                (local.get $l4)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l7)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (i32.const 16))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l5)))
        (if $I8
          (select
            (global.get $g1)
            (i32.const 1)
            (if $I7 (result i32)
              (global.get $g1)
              (then
                (local.get $p2))
              (else
                (i64.store
                  (local.get $l5)
                  (local.get $p1))
                (i32.store offset=8
                  (local.get $l5)
                  (local.get $p2))
                (i32.store offset=32
                  (local.get $l4)
                  (local.get $l5))
                (i32.store offset=36
                  (local.get $l4)
                  (local.get $l5))
                (i32.lt_s
                  (local.get $l6)
                  (i32.const 0)))))
          (then
            (if $I9
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 2))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (local.get $l6))
                (drop
                  (br_if $B1
                    (i32.const 2)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $l5)))
            (if $I10
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=40
                  (local.get $l4)
                  (local.get $l5))))
            (if $I11
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 3))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $syscall/js.valueLoadString
                  (local.get $l9)
                  (local.get $l5)
                  (local.get $l6)
                  (local.get $l6))
                (drop
                  (br_if $B1
                    (i32.const 3)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I12
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 4))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $syscall/js.finalizeRef
                  (local.get $l9))
                (drop
                  (br_if $B1
                    (i32.const 4)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I13
              (select
                (i32.eq
                  (local.get $l7)
                  (i32.const 5))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.stringFromBytes
                  (local.get $l4)
                  (local.get $l5)
                  (local.get $l6))
                (drop
                  (br_if $B1
                    (i32.const 5)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I14
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store
                  (i32.const 68316)
                  (local.get $l8))
                (local.set $p2
                  (i32.load offset=4
                    (local.get $l4)))
                (i32.store
                  (local.get $p0)
                  (i32.load
                    (local.get $l4)))
                (i32.store offset=4
                  (local.get $p0)
                  (local.get $p2))
                (global.set $__stack_pointer
                  (i32.add
                    (local.get $l4)
                    (i32.const 48)))
                (return)))))
        (if $I15
          (select
            (i32.eq
              (local.get $l7)
              (i32.const 6))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.slicePanic)
            (drop
              (br_if $B1
                (i32.const 6)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I16
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i64.store offset=4 align=4
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l3)
      (local.get $l4))
    (i32.store offset=20
      (local.get $l3)
      (local.get $l5))
    (i32.store offset=24
      (local.get $l3)
      (local.get $l6))
    (i32.store offset=28
      (local.get $l3)
      (local.get $l8))
    (i64.store offset=32 align=4
      (local.get $l3)
      (local.get $l9))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 40))))
  (func $syscall/js.ValueOf (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i64) (local $l14 i64) (local $l15 i64) (local $l16 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 68)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $l3
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l4
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l13
          (i64.load offset=20 align=4
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l9
          (i32.load offset=36
            (local.get $p1)))
        (local.set $l14
          (i64.load offset=40 align=4
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=48
            (local.get $p1)))
        (local.set $l15
          (i64.load offset=52 align=4
            (local.get $p1)))
        (local.set $l11
          (i32.load offset=60
            (local.get $p1)))
        (local.set $l12
          (i32.load offset=64
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l5
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l6
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l3
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 336))))
            (i32.store offset=220
              (local.get $l3)
              (i32.const 27))
            (memory.fill
              (i32.add
                (local.get $l3)
                (i32.const 224))
              (i32.const 0)
              (i32.const 108))
            (i32.store offset=216
              (local.get $l3)
              (local.tee $l10
                (i32.load
                  (i32.const 68316))))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l3)
                (i32.const 216)))
            (local.set $l4
              (i32.eq
                (local.get $p1)
                (i32.const 67840)))))
        (block $B4
          (block $B5
            (if $I6
              (i32.eqz
                (global.get $g1))
              (then
                (br_if $B5
                  (local.get $l4))
                (br_if $B5
                  (local.tee $l4
                    (i32.eq
                      (local.get $p1)
                      (i32.const 67792))))
                (local.set $l4
                  (i32.const 0))
                (if $I7
                  (i32.eqz
                    (local.get $p1))
                  (then
                    (local.set $l13
                      (i64.const 9221120237041090562))
                    (br $B4)))
                (if $I8
                  (i32.eqz
                    (local.tee $l7
                      (i32.ne
                        (local.get $p1)
                        (i32.const 66944))))
                  (then
                    (local.set $l13
                      (select
                        (i64.const 9221120237041090563)
                        (i64.const 9221120237041090564)
                        (i32.and
                          (local.get $p2)
                          (i32.const 1))))
                    (br $B4)))
                (if $I9
                  (i32.eq
                    (local.get $p1)
                    (i32.const 66900))
                  (then
                    (call $syscall/js.floatValue
                      (i32.add
                        (local.get $l3)
                        (i32.const 8))
                      (f64.convert_i32_s
                        (local.get $p2)))
                    (local.set $l4
                      (i32.load offset=16
                        (local.get $l3)))
                    (local.set $l13
                      (i64.load offset=8
                        (local.get $l3)))
                    (br $B4)))
                (if $I10
                  (i32.eq
                    (local.get $p1)
                    (i32.const 65568))
                  (then
                    (call $syscall/js.floatValue
                      (i32.add
                        (local.get $l3)
                        (i32.const 24))
                      (f64.convert_i32_u
                        (i32.and
                          (local.get $p2)
                          (i32.const 255))))
                    (local.set $l4
                      (i32.load offset=32
                        (local.get $l3)))
                    (local.set $l13
                      (i64.load offset=24
                        (local.get $l3)))
                    (br $B4)))
                (if $I11
                  (i32.eq
                    (local.get $p1)
                    (i32.const 67708))
                  (then
                    (call $syscall/js.floatValue
                      (i32.add
                        (local.get $l3)
                        (i32.const 40))
                      (f64.convert_i32_u
                        (local.get $p2)))
                    (local.set $l4
                      (i32.load offset=48
                        (local.get $l3)))
                    (local.set $l13
                      (i64.load offset=40
                        (local.get $l3)))
                    (br $B4)))
                (if $I12
                  (i32.eq
                    (local.get $p1)
                    (i32.const 67684))
                  (then
                    (call $syscall/js.floatValue
                      (i32.add
                        (local.get $l3)
                        (i32.const 56))
                      (f64.convert_i64_u
                        (i64.load
                          (local.get $p2))))
                    (local.set $l4
                      (i32.load offset=64
                        (local.get $l3)))
                    (local.set $l13
                      (i64.load offset=56
                        (local.get $l3)))
                    (br $B4)))
                (if $I13
                  (i32.eq
                    (local.get $p1)
                    (i32.const 66928))
                  (then
                    (call $syscall/js.floatValue
                      (i32.add
                        (local.get $l3)
                        (i32.const 72))
                      (f64.load
                        (local.get $p2)))
                    (local.set $l4
                      (i32.load offset=80
                        (local.get $l3)))
                    (local.set $l13
                      (i64.load offset=72
                        (local.get $l3)))
                    (br $B4)))
                (local.set $l4
                  (i32.ne
                    (local.get $p1)
                    (i32.const 67000)))))
            (block $B14
              (if $I15
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B14
                    (local.get $l4))
                  (local.set $l4
                    (i32.load
                      (local.get $p2)))
                  (local.set $p2
                    (i32.load offset=4
                      (local.get $p2)))
                  (local.set $p1
                    (i32.add
                      (local.get $l3)
                      (i32.const 88)))))
              (if $I16
                (i32.eqz
                  (select
                    (local.get $l6)
                    (i32.const 0)
                    (global.get $g1)))
                (then
                  (call $syscall/js.stringVal
                    (local.get $l4)
                    (local.get $p2))
                  (drop
                    (br_if $B1
                      (i32.const 0)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))
                  (local.set $l13)))
              (if $I17
                (select
                  (i32.eq
                    (local.get $l6)
                    (i32.const 1))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $syscall/js.makeValue
                    (local.get $p1)
                    (local.get $l13))
                  (drop
                    (br_if $B1
                      (i32.const 1)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I18
                (i32.eqz
                  (global.get $g1))
                (then
                  (local.set $l4
                    (i32.load offset=96
                      (local.get $l3)))
                  (local.set $l13
                    (i64.load offset=88
                      (local.get $l3)))
                  (br $B4))))
            (local.set $l4
              (select
                (local.get $l4)
                (i32.ne
                  (local.get $p1)
                  (i32.const 67488))
                (global.get $g1)))
            (block $B19
              (block $B20
                (if $I21
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (br_if $B20
                      (local.get $l4))
                    (i32.store offset=252
                      (local.get $l3)
                      (local.tee $l7
                        (i32.load
                          (i32.const 68616))))
                    (local.set $l13
                      (i64.load
                        (i32.const 68608)))
                    (local.set $l4
                      (i32.add
                        (local.get $l3)
                        (i32.const 152)))))
                (if $I22
                  (select
                    (i32.eq
                      (local.get $l6)
                      (i32.const 2))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $syscall/js.makeArgs
                      (local.get $l4)
                      (i32.const 0)
                      (i32.const 0))
                    (drop
                      (br_if $B1
                        (i32.const 2)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I23
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=260
                      (local.get $l3)
                      (local.tee $l4
                        (i32.load offset=164
                          (local.get $l3))))
                    (i32.store offset=256
                      (local.get $l3)
                      (local.tee $l9
                        (i32.load offset=152
                          (local.get $l3))))
                    (local.set $l15
                      (i64.load offset=156 align=4
                        (local.get $l3)))
                    (local.set $l11
                      (i32.load offset=168
                        (local.get $l3)))
                    (local.set $l12
                      (i32.load offset=172
                        (local.get $l3)))
                    (local.set $l8
                      (i32.add
                        (local.get $l3)
                        (i32.const 136)))))
                (if $I24
                  (select
                    (i32.eq
                      (local.get $l6)
                      (i32.const 3))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $syscall/js.valueNew
                      (local.get $l8)
                      (local.get $l13)
                      (local.get $l4)
                      (local.get $l11)
                      (local.get $l12))
                    (drop
                      (br_if $B1
                        (i32.const 3)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I25
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=284
                      (local.get $l3)
                      (local.get $l7))
                    (i32.store offset=264
                      (local.get $l3)
                      (local.get $l7))
                    (local.set $l14
                      (i64.load offset=136
                        (local.get $l3)))
                    (local.set $l8
                      (i32.load8_u offset=144
                        (local.get $l3)))))
                (if $I26
                  (select
                    (i32.eq
                      (local.get $l6)
                      (i32.const 4))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.alloc
                      (i32.const 16))
                    (drop
                      (br_if $B1
                        (i32.const 4)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))
                    (local.set $l4)))
                (if $I27
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i64.store
                      (local.get $l4)
                      (local.get $l13))
                    (i32.store offset=8
                      (local.get $l4)
                      (local.get $l7))
                    (i32.store offset=268
                      (local.get $l3)
                      (local.get $l4))
                    (i32.store offset=272
                      (local.get $l3)
                      (local.get $l4))))
                (if $I28
                  (select
                    (i32.eq
                      (local.get $l6)
                      (i32.const 5))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $runtime.alloc
                      (i32.const 12))
                    (drop
                      (br_if $B1
                        (i32.const 5)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))
                    (local.set $l4)))
                (if $I29
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i64.store offset=4 align=4
                      (local.get $l4)
                      (local.get $l15))
                    (i32.store
                      (local.get $l4)
                      (local.get $l9))
                    (i32.store offset=276
                      (local.get $l3)
                      (local.get $l4))
                    (i32.store offset=280
                      (local.get $l3)
                      (local.get $l4))))
                (if $I30
                  (select
                    (global.get $g1)
                    (i32.const 1)
                    (local.get $l8))
                  (then
                    (if $I31
                      (select
                        (i32.eq
                          (local.get $l6)
                          (i32.const 6))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $_syscall/js.Value_.Type
                          (local.get $l13))
                        (drop
                          (br_if $B1
                            (i32.const 6)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))
                        (local.set $p0)))
                    (if $I32
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (br_if $B19
                          (local.tee $p1
                            (i32.ne
                              (local.get $p0)
                              (i32.const 7))))
                        (local.set $p0
                          (i32.add
                            (local.get $l3)
                            (i32.const 120)))))
                    (if $I33
                      (select
                        (i32.eq
                          (local.get $l6)
                          (i32.const 7))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $syscall/js.makeValue
                          (local.get $p0)
                          (local.get $l14))
                        (drop
                          (br_if $B1
                            (i32.const 7)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))))
                    (if $I34
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (i32.store offset=300
                          (local.get $l3)
                          (local.tee $p0
                            (i32.load offset=128
                              (local.get $l3))))
                        (i32.store offset=296
                          (local.get $l3)
                          (local.get $p0))
                        (local.set $l13
                          (i64.load offset=120
                            (local.get $l3)))))
                    (if $I35
                      (select
                        (i32.eq
                          (local.get $l6)
                          (i32.const 8))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime.alloc
                          (i32.const 16))
                        (drop
                          (br_if $B1
                            (i32.const 8)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))
                        (local.set $p1)))
                    (if $I36
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (i64.store
                          (local.get $p1)
                          (local.get $l13))
                        (i32.store offset=8
                          (local.get $p1)
                          (local.get $p0))
                        (i32.store offset=304
                          (local.get $l3)
                          (local.get $p1))
                        (i32.store offset=308
                          (local.get $l3)
                          (local.get $p1))))
                    (if $I37
                      (select
                        (i32.eq
                          (local.get $l6)
                          (i32.const 9))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime._panic
                          (i32.const 67764)
                          (local.get $p1))
                        (drop
                          (br_if $B1
                            (i32.const 9)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))))
                    (if $I38
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (unreachable)))))
                (if $I39
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (local.set $l8
                      (select
                        (local.get $p2)
                        (i32.const 0)
                        (i32.eq
                          (local.get $p1)
                          (i32.const 67488))))
                    (local.set $p1
                      (i32.add
                        (local.get $l3)
                        (i32.const 104)))))
                (if $I40
                  (select
                    (i32.eq
                      (local.get $l6)
                      (i32.const 10))
                    (i32.const 1)
                    (global.get $g1))
                  (then
                    (call $syscall/js.makeValue
                      (local.get $p1)
                      (local.get $l14))
                    (drop
                      (br_if $B1
                        (i32.const 10)
                        (i32.eq
                          (global.get $g1)
                          (i32.const 1))))))
                (if $I41
                  (i32.eqz
                    (global.get $g1))
                  (then
                    (i32.store offset=316
                      (local.get $l3)
                      (local.tee $l4
                        (i32.load offset=112
                          (local.get $l3))))
                    (i32.store offset=312
                      (local.get $l3)
                      (local.get $l4))
                    (local.set $l13
                      (i64.load offset=104
                        (local.get $l3)))
                    (i32.store8
                      (i32.add
                        (local.get $l3)
                        (i32.const 192))
                      (i32.const 0))
                    (i64.store
                      (local.tee $p1
                        (i32.add
                          (local.get $l3)
                          (i32.const 184)))
                      (i64.const 0))
                    (i64.store offset=176
                      (local.get $l3)
                      (i64.const 0))))
                (loop $L42
                  (if $I43
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (local.set $p2
                        (i32.add
                          (local.get $l3)
                          (i32.const 200)))
                      (local.set $l7
                        (i32.add
                          (local.get $l3)
                          (i32.const 208)))
                      (local.set $p1
                        (i32.add
                          (local.get $l3)
                          (i32.const 176)))))
                  (if $I44
                    (select
                      (i32.eq
                        (local.get $l6)
                        (i32.const 11))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.hashmapNext
                        (local.get $l8)
                        (local.get $p1)
                        (local.get $p2)
                        (local.get $l7))
                      (drop
                        (br_if $B1
                          (i32.const 11)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $p1)))
                  (if $I45
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store offset=320
                        (local.get $l3)
                        (local.tee $p2
                          (i32.load offset=200
                            (local.get $l3))))
                      (i32.store offset=324
                        (local.get $l3)
                        (local.tee $l7
                          (i32.load offset=208
                            (local.get $l3))))
                      (i32.store offset=328
                        (local.get $l3)
                        (local.tee $l9
                          (i32.load offset=212
                            (local.get $l3))))
                      (br_if $B4
                        (i32.eqz
                          (i32.and
                            (local.get $p1)
                            (i32.const 1))))
                      (local.set $p1
                        (i32.load offset=204
                          (local.get $l3)))))
                  (if $I46
                    (select
                      (i32.eq
                        (local.get $l6)
                        (i32.const 12))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $_syscall/js.Value_.Set
                        (local.get $l13)
                        (local.get $l4)
                        (local.get $p2)
                        (local.get $p1)
                        (local.get $l7)
                        (local.get $l9))
                      (drop
                        (br_if $B1
                          (i32.const 12)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (br_if $L42
                    (i32.eqz
                      (global.get $g1)))))
              (if $I47
                (select
                  (i32.eq
                    (local.get $l6)
                    (i32.const 13))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $runtime._panic
                    (i32.const 67000)
                    (i32.const 66784))
                  (drop
                    (br_if $B1
                      (i32.const 13)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I48
                (i32.eqz
                  (global.get $g1))
                (then
                  (unreachable))))
            (if $I49
              (select
                (i32.eq
                  (local.get $l6)
                  (i32.const 14))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime.alloc
                  (i32.const 12))
                (drop
                  (br_if $B1
                    (i32.const 14)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))
                (local.set $p1)))
            (if $I50
              (i32.eqz
                (global.get $g1))
              (then
                (i32.store offset=8
                  (local.get $p1)
                  (local.get $p0))
                (i32.store offset=4
                  (local.get $p1)
                  (i32.const 12))
                (i32.store
                  (local.get $p1)
                  (i32.const 66627))
                (i32.store offset=288
                  (local.get $l3)
                  (local.get $p1))
                (i32.store offset=292
                  (local.get $l3)
                  (local.get $p1))))
            (if $I51
              (select
                (i32.eq
                  (local.get $l6)
                  (i32.const 15))
                (i32.const 1)
                (global.get $g1))
              (then
                (call $runtime._panic
                  (i32.const 67924)
                  (local.get $p1))
                (drop
                  (br_if $B1
                    (i32.const 15)
                    (i32.eq
                      (global.get $g1)
                      (i32.const 1))))))
            (if $I52
              (i32.eqz
                (global.get $g1))
              (then
                (unreachable))))
          (if $I53
            (i32.eqz
              (global.get $g1))
            (then
              (local.set $l13
                (i64.load
                  (local.get $p2)))
              (local.set $l4
                (i32.load offset=8
                  (local.get $p2))))))
        (if $I54
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l10))
            (i32.store offset=8
              (local.get $p0)
              (local.get $l4))
            (i64.store
              (local.get $p0)
              (local.get $l13))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l3)
                (i32.const 336)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l5))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l5
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l5)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l5)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l5)
      (local.get $l3))
    (i32.store offset=16
      (local.get $l5)
      (local.get $l4))
    (i64.store offset=20 align=4
      (local.get $l5)
      (local.get $l13))
    (i32.store offset=28
      (local.get $l5)
      (local.get $l7))
    (i32.store offset=32
      (local.get $l5)
      (local.get $l8))
    (i32.store offset=36
      (local.get $l5)
      (local.get $l9))
    (i64.store offset=40 align=4
      (local.get $l5)
      (local.get $l14))
    (i32.store offset=48
      (local.get $l5)
      (local.get $l10))
    (i64.store offset=52 align=4
      (local.get $l5)
      (local.get $l15))
    (i32.store offset=60
      (local.get $l5)
      (local.get $l11))
    (i32.store offset=64
      (local.get $l5)
      (local.get $l12))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 68))))
  (func $syscall/js.floatValue (type $t22) (param $p0 i32) (param $p1 f64)
    (i64.store
      (local.get $p0)
      (block $B0 (result i64)
        (drop
          (br_if $B0
            (i64.const 9221120237041090561)
            (f64.eq
              (local.get $p1)
              (f64.const 0x0p+0 (;=0;)))))
        (drop
          (br_if $B0
            (i64.const 9221120237041090560)
            (f64.ne
              (local.get $p1)
              (local.get $p1))))
        (i64.reinterpret_f64
          (local.get $p1))))
    (i32.store offset=8
      (local.get $p0)
      (i32.const 0)))
  (func $syscall/js.makeArgs (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i64)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 52)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.set $l4
          (i32.load offset=12
            (local.get $p1)))
        (local.set $l5
          (i32.load offset=16
            (local.get $p1)))
        (local.set $l6
          (i32.load offset=20
            (local.get $p1)))
        (local.set $l7
          (i32.load offset=24
            (local.get $p1)))
        (local.set $l8
          (i32.load offset=28
            (local.get $p1)))
        (local.set $l9
          (i32.load offset=32
            (local.get $p1)))
        (local.set $l10
          (i32.load offset=36
            (local.get $p1)))
        (local.set $l12
          (i32.load offset=40
            (local.get $p1)))
        (local.set $l13
          (i32.load offset=44
            (local.get $p1)))
        (local.set $l14
          (i32.load offset=48
            (local.get $p1)))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l11
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l4
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 48))))
            (i64.store
              (i32.add
                (local.get $l4)
                (i32.const 32))
              (i64.const 0))
            (i64.store
              (i32.add
                (local.get $l4)
                (i32.const 40))
              (i64.const 0))
            (i64.store offset=24
              (local.get $l4)
              (i64.const 0))
            (i32.store offset=20
              (local.get $l4)
              (i32.const 6))
            (local.set $l7
              (i32.const 0))
            (local.set $l12
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l4)
                (i32.const 16)))
            (i32.store offset=16
              (local.get $l4)
              (local.get $l12))
            (local.set $l5
              (i32.shl
                (local.get $p2)
                (i32.const 4)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l11)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.alloc
              (local.get $l5))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l9)))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=24
              (local.get $l4)
              (local.get $l9))
            (local.set $l5
              (i32.shl
                (local.get $p2)
                (i32.const 3)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l11)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.alloc
              (local.get $l5))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $l10)))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=28
              (local.get $l4)
              (local.get $l10))
            (local.set $l14
              (select
                (local.get $p2)
                (i32.const 0)
                (i32.gt_s
                  (local.get $p2)
                  (i32.const 0))))
            (local.set $l8
              (i32.const 0))
            (local.set $l5
              (local.get $l9))))
        (block $B8
          (loop $L9
            (block $B10
              (if $I11
                (i32.eqz
                  (global.get $g1))
                (then
                  (br_if $B10
                    (i32.eq
                      (local.get $l8)
                      (local.get $l14)))
                  (br_if $B8
                    (i32.eq
                      (local.get $p2)
                      (local.get $l8)))
                  (i32.store offset=32
                    (local.get $l4)
                    (local.tee $l13
                      (i32.load
                        (local.tee $l3
                          (i32.add
                            (local.get $p1)
                            (local.get $l7))))))
                  (i32.store offset=36
                    (local.get $l4)
                    (local.tee $l6
                      (i32.load
                        (i32.add
                          (local.get $l3)
                          (i32.const 4)))))))
              (if $I12
                (select
                  (i32.eq
                    (local.get $l11)
                    (i32.const 2))
                  (i32.const 1)
                  (global.get $g1))
                (then
                  (call $syscall/js.ValueOf
                    (local.get $l4)
                    (local.get $l13)
                    (local.get $l6))
                  (drop
                    (br_if $B1
                      (i32.const 2)
                      (i32.eq
                        (global.get $g1)
                        (i32.const 1))))))
              (if $I13
                (i32.eqz
                  (global.get $g1))
                (then
                  (local.set $l6
                    (i32.load offset=8
                      (local.get $l4)))
                  (i64.store
                    (local.get $l5)
                    (local.tee $l15
                      (i64.load
                        (local.get $l4))))
                  (i32.store offset=8
                    (local.get $l5)
                    (local.get $l6))
                  (i64.store
                    (local.tee $l13
                      (i32.add
                        (local.get $l7)
                        (local.get $l10)))
                    (local.get $l15))
                  (i32.store offset=44
                    (local.get $l4)
                    (local.get $l6))
                  (i32.store offset=40
                    (local.get $l4)
                    (local.get $l6))
                  (local.set $l5
                    (i32.add
                      (local.get $l5)
                      (i32.const 16)))
                  (local.set $l7
                    (i32.add
                      (local.get $l7)
                      (i32.const 8)))
                  (local.set $l8
                    (i32.add
                      (local.get $l8)
                      (i32.const 1)))
                  (br $L9)))))
          (if $I14
            (i32.eqz
              (global.get $g1))
            (then
              (i32.store
                (i32.const 68316)
                (local.get $l12))
              (i32.store offset=20
                (local.get $p0)
                (local.get $p2))
              (i32.store offset=16
                (local.get $p0)
                (local.get $p2))
              (i32.store offset=12
                (local.get $p0)
                (local.get $l10))
              (i32.store offset=8
                (local.get $p0)
                (local.get $p2))
              (i32.store offset=4
                (local.get $p0)
                (local.get $p2))
              (i32.store
                (local.get $p0)
                (local.get $l9))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l4)
                  (i32.const 48)))
              (return))))
        (if $I15
          (select
            (i32.eq
              (local.get $l11)
              (i32.const 3))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $runtime.lookupPanic)
            (drop
              (br_if $B1
                (i32.const 3)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I16
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=12
      (local.get $l3)
      (local.get $l4))
    (i32.store offset=16
      (local.get $l3)
      (local.get $l5))
    (i32.store offset=20
      (local.get $l3)
      (local.get $l6))
    (i32.store offset=24
      (local.get $l3)
      (local.get $l7))
    (i32.store offset=28
      (local.get $l3)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l3)
      (local.get $l9))
    (i32.store offset=36
      (local.get $l3)
      (local.get $l10))
    (i32.store offset=40
      (local.get $l3)
      (local.get $l12))
    (i32.store offset=44
      (local.get $l3)
      (local.get $l13))
    (i32.store offset=48
      (local.get $l3)
      (local.get $l14))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 52))))
  (func $github.com/onlpsec/fingerprint/internal/canvas.drawCircle (type $t23) (param $p0 i64) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 36)))
        (local.set $p0
          (i64.load align=4
            (local.tee $l7
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=8
            (local.get $l7)))
        (local.set $p2
          (i32.load offset=12
            (local.get $l7)))
        (local.set $p3
          (i32.load offset=16
            (local.get $l7)))
        (local.set $p4
          (i32.load offset=20
            (local.get $l7)))
        (local.set $l5
          (i32.load offset=24
            (local.get $l7)))
        (local.set $l8
          (i32.load offset=28
            (local.get $l7)))
        (local.set $l7
          (i32.load offset=32
            (local.get $l7)))))
    (local.set $l6
      (block $B1 (result i32)
        (if $I2
          (i32.eq
            (global.get $g1)
            (i32.const 2))
          (then
            (i32.store
              (global.get $g2)
              (i32.sub
                (i32.load
                  (global.get $g2))
                (i32.const 4)))
            (local.set $l6
              (i32.load
                (i32.load
                  (global.get $g2))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (global.set $__stack_pointer
              (local.tee $l5
                (i32.sub
                  (global.get $__stack_pointer)
                  (i32.const 160))))
            (i32.store
              (i32.add
                (local.get $l5)
                (i32.const 152))
              (i32.const 0))
            (i64.store offset=144
              (local.get $l5)
              (i64.const 0))
            (i32.store offset=124
              (local.get $l5)
              (i32.const 7))
            (local.set $l8
              (i32.load
                (i32.const 68316)))
            (i32.store
              (i32.const 68316)
              (i32.add
                (local.get $l5)
                (i32.const 120)))
            (i32.store offset=120
              (local.get $l5)
              (local.get $l8))
            (local.set $l7
              (i32.add
                (local.get $l5)
                (i32.const 56)))))
        (if $I4
          (i32.eqz
            (select
              (local.get $l6)
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $l7)
              (local.get $p0)
              (local.get $p1)
              (i32.const 66888)
              (i32.const 9)
              (i32.const 0)
              (i32.const 0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I5
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=132
              (local.get $l5)
              (local.get $p2))
            (i32.store offset=76
              (local.get $l5)
              (local.get $p2))
            (i32.store offset=72
              (local.get $l5)
              (i32.const 66900))
            (i32.store offset=136
              (local.get $l5)
              (local.get $p3))
            (i32.store offset=84
              (local.get $l5)
              (local.get $p3))
            (i32.store offset=80
              (local.get $l5)
              (i32.const 66900))
            (i32.store offset=140
              (local.get $l5)
              (local.get $p4))
            (i32.store offset=116
              (local.get $l5)
              (i32.const 1))
            (i32.store offset=112
              (local.get $l5)
              (i32.const 66944))
            (i32.store offset=108
              (local.get $l5)
              (i32.const 66920))
            (i32.store offset=104
              (local.get $l5)
              (i32.const 66928))
            (i32.store offset=100
              (local.get $l5)
              (i32.const 0))
            (i32.store offset=96
              (local.get $l5)
              (i32.const 66900))
            (i32.store offset=92
              (local.get $l5)
              (local.get $p4))
            (i32.store offset=88
              (local.get $l5)
              (i32.const 66900))
            (i32.store offset=128
              (local.get $l5)
              (i32.load offset=64
                (local.get $l5)))
            (local.set $p3
              (i32.add
                (local.get $l5)
                (i32.const 72)))
            (local.set $p2
              (i32.add
                (local.get $l5)
                (i32.const 40)))))
        (if $I6
          (select
            (i32.eq
              (local.get $l6)
              (i32.const 1))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p2)
              (local.get $p0)
              (local.get $p1)
              (i32.const 66960)
              (i32.const 3)
              (local.get $p3)
              (i32.const 6))
            (drop
              (br_if $B1
                (i32.const 1)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I7
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=144
              (local.get $l5)
              (i32.load offset=48
                (local.get $l5)))
            (local.set $p2
              (i32.add
                (local.get $l5)
                (i32.const 24)))))
        (if $I8
          (select
            (i32.eq
              (local.get $l6)
              (i32.const 2))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p2)
              (local.get $p0)
              (local.get $p1)
              (i32.const 66963)
              (i32.const 9)
              (i32.const 0)
              (i32.const 0))
            (drop
              (br_if $B1
                (i32.const 2)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I9
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store offset=148
              (local.get $l5)
              (i32.load offset=32
                (local.get $l5)))
            (local.set $p2
              (i32.add
                (local.get $l5)
                (i32.const 8)))))
        (if $I10
          (select
            (i32.eq
              (local.get $l6)
              (i32.const 3))
            (i32.const 1)
            (global.get $g1))
          (then
            (call $_syscall/js.Value_.Call
              (local.get $p2)
              (local.get $p0)
              (local.get $p1)
              (i32.const 67464)
              (i32.const 4)
              (i32.const 0)
              (i32.const 0))
            (drop
              (br_if $B1
                (i32.const 3)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (i32.store
              (i32.const 68316)
              (local.get $l8))
            (global.set $__stack_pointer
              (i32.add
                (local.get $l5)
                (i32.const 160)))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l6))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i64.store align=4
      (local.tee $l6
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=8
      (local.get $l6)
      (local.get $p1))
    (i32.store offset=12
      (local.get $l6)
      (local.get $p2))
    (i32.store offset=16
      (local.get $l6)
      (local.get $p3))
    (i32.store offset=20
      (local.get $l6)
      (local.get $p4))
    (i32.store offset=24
      (local.get $l6)
      (local.get $l5))
    (i32.store offset=28
      (local.get $l6)
      (local.get $l8))
    (i32.store offset=32
      (local.get $l6)
      (local.get $l7))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 36))))
  (func $malloc.command_export (export "malloc") (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 4)))
        (local.set $p0
          (i32.load
            (i32.load
              (global.get $g2))))))
    (local.set $l1
      (block $B1 (result i32)
        (if $I3
          (i32.eqz
            (select
              (if $I2 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $malloc
              (local.get $p0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p0)))
        (if $I4
          (i32.eqz
            (global.get $g1))
          (then
            (return
              (local.get $p0))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.const 0))
  (func $free.command_export (export "free") (type $t1) (param $p0 i32)
    (local $l1 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 4)))
        (local.set $p0
          (i32.load
            (i32.load
              (global.get $g2))))))
    (local.set $l1
      (block $B1 (result i32)
        (if $I3
          (i32.eqz
            (select
              (if $I2 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $free
              (local.get $p0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $p0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $calloc.command_export (export "calloc") (type $t10) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 8)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l2
      (block $B1 (result i32)
        (if $I3
          (i32.eqz
            (select
              (if $I2 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (block $B4 (result i32)
              (local.set $l2
                (local.get $p0))
              (if $I5
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 12)))
                  (local.set $l2
                    (i32.load
                      (local.tee $l4
                        (i32.load
                          (global.get $g2)))))
                  (local.set $l5
                    (i32.load offset=4
                      (local.get $l4)))
                  (local.set $l4
                    (i32.load offset=8
                      (local.get $l4)))))
              (local.set $l3
                (block $B6 (result i32)
                  (if $I7
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l3
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I8
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l5
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 16))))
                      (local.set $l4
                        (i32.load
                          (i32.const 68316)))
                      (i32.store
                        (i32.const 68316)
                        (local.get $l5))
                      (local.set $l2
                        (i32.mul
                          (local.get $p1)
                          (local.get $l2)))))
                  (if $I9
                    (i32.eqz
                      (select
                        (local.get $l3)
                        (i32.const 0)
                        (global.get $g1)))
                    (then
                      (call $malloc
                        (local.get $l2))
                      (drop
                        (br_if $B6
                          (i32.const 0)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))
                      (local.set $l2)))
                  (if $I10
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (i32.const 68316)
                        (local.get $l4))
                      (global.set $__stack_pointer
                        (i32.add
                          (local.get $l5)
                          (i32.const 16)))
                      (br $B4
                        (local.get $l2))))
                  (unreachable)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l3))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l3
                  (i32.load
                    (global.get $g2)))
                (local.get $l2))
              (i32.store offset=4
                (local.get $l3)
                (local.get $l5))
              (i32.store offset=8
                (local.get $l3)
                (local.get $l4))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 12)))
              (i32.const 0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p0)))
        (if $I11
          (i32.eqz
            (global.get $g1))
          (then
            (return
              (local.get $p0))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l2
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 8)))
    (i32.const 0))
  (func $realloc.command_export (export "realloc") (type $t10) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (if $I0
      (i32.eq
        (global.get $g1)
        (i32.const 2))
      (then
        (i32.store
          (global.get $g2)
          (i32.sub
            (i32.load
              (global.get $g2))
            (i32.const 8)))
        (local.set $p0
          (i32.load
            (local.tee $p1
              (i32.load
                (global.get $g2)))))
        (local.set $p1
          (i32.load offset=4
            (local.get $p1)))))
    (local.set $l3
      (block $B1 (result i32)
        (if $I3
          (i32.eqz
            (select
              (if $I2 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (block $B4 (result i32)
              (local.set $l7
                (local.get $p0))
              (local.set $l4
                (local.get $p1))
              (if $I5
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 24)))
                  (local.set $l7
                    (i32.load
                      (local.tee $l4
                        (i32.load
                          (global.get $g2)))))
                  (local.set $l2
                    (i32.load offset=8
                      (local.get $l4)))
                  (local.set $l3
                    (i32.load offset=12
                      (local.get $l4)))
                  (local.set $l5
                    (i32.load offset=16
                      (local.get $l4)))
                  (local.set $l9
                    (i32.load offset=20
                      (local.get $l4)))
                  (local.set $l4
                    (i32.load offset=4
                      (local.get $l4)))))
              (local.set $l6
                (block $B6 (result i32)
                  (if $I7
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l8
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I8
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l2
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 32))))
                      (i32.store offset=20
                        (local.get $l2)
                        (i32.const 2))
                      (local.set $l9
                        (i32.load
                          (i32.const 68316)))
                      (i32.store
                        (i32.const 68316)
                        (local.tee $l3
                          (i32.add
                            (local.get $l2)
                            (i32.const 16))))
                      (i32.store offset=16
                        (local.get $l2)
                        (local.get $l9))
                      (local.set $l5
                        (i32.const 0))))
                  (block $B9
                    (block $B10
                      (block $B11
                        (if $I12
                          (select
                            (global.get $g1)
                            (i32.const 1)
                            (local.get $l4))
                          (then
                            (if $I13
                              (i32.eqz
                                (select
                                  (local.get $l8)
                                  (i32.const 0)
                                  (global.get $g1)))
                              (then
                                (call $free
                                  (local.get $l7))
                                (drop
                                  (br_if $B6
                                    (i32.const 0)
                                    (i32.eq
                                      (global.get $g1)
                                      (i32.const 1))))))
                            (br_if $B11
                              (i32.eqz
                                (global.get $g1)))))
                        (if $I14
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (br_if $B10
                              (local.tee $l5
                                (i32.lt_s
                                  (local.get $l4)
                                  (i32.const 0))))))
                        (if $I15
                          (select
                            (i32.eq
                              (local.get $l8)
                              (i32.const 1))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.alloc
                              (local.get $l4))
                            (drop
                              (br_if $B6
                                (i32.const 1)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1))))
                            (local.set $l5)))
                        (if $I16
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (i32.store offset=24
                              (local.get $l2)
                              (local.get $l5))
                            (i32.store offset=28
                              (local.get $l2)
                              (local.get $l5))
                            (local.set $l3
                              (i32.eqz
                                (local.get $l7)))))
                        (block $B17
                          (if $I18
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (br_if $B17
                                (local.get $l3))
                              (i32.store offset=12
                                (local.get $l2)
                                (local.get $l7))
                              (local.set $l3
                                (i32.add
                                  (local.get $l2)
                                  (i32.const 12)))))
                          (if $I19
                            (select
                              (i32.eq
                                (local.get $l8)
                                (i32.const 2))
                              (i32.const 1)
                              (global.get $g1))
                            (then
                              (call $runtime.hashmapBinaryGet
                                (i32.const 68040)
                                (local.get $l3)
                                (local.get $l2)
                                (i32.const 12))
                              (drop
                                (br_if $B6
                                  (i32.const 2)
                                  (i32.eq
                                    (global.get $g1)
                                    (i32.const 1))))
                              (local.set $l3)))
                          (if $I20
                            (i32.eqz
                              (global.get $g1))
                            (then
                              (br_if $B9
                                (i32.eqz
                                  (i32.and
                                    (local.get $l3)
                                    (i32.const 1))))
                              (memory.copy
                                (local.get $l5)
                                (i32.load
                                  (local.get $l2))
                                (select
                                  (local.tee $l3
                                    (i32.load offset=4
                                      (local.get $l2)))
                                  (local.get $l4)
                                  (i32.lt_u
                                    (local.get $l3)
                                    (local.get $l4))))
                              (i32.store
                                (local.get $l2)
                                (local.get $l7))))
                          (if $I21
                            (select
                              (i32.eq
                                (local.get $l8)
                                (i32.const 3))
                              (i32.const 1)
                              (global.get $g1))
                            (then
                              (call $runtime.hashmapBinaryDelete
                                (local.get $l2))
                              (drop
                                (br_if $B6
                                  (i32.const 3)
                                  (i32.eq
                                    (global.get $g1)
                                    (i32.const 1)))))))
                        (if $I22
                          (i32.eqz
                            (global.get $g1))
                          (then
                            (i32.store offset=8
                              (local.get $l2)
                              (local.get $l4))
                            (i32.store offset=4
                              (local.get $l2)
                              (local.get $l4))
                            (i32.store
                              (local.get $l2)
                              (local.get $l5))
                            (i32.store offset=12
                              (local.get $l2)
                              (local.get $l5))
                            (local.set $l7
                              (i32.add
                                (local.get $l2)
                                (i32.const 12)))))
                        (if $I23
                          (select
                            (i32.eq
                              (local.get $l8)
                              (i32.const 4))
                            (i32.const 1)
                            (global.get $g1))
                          (then
                            (call $runtime.hashmapBinarySet
                              (i32.const 68040)
                              (local.get $l7)
                              (local.get $l2))
                            (drop
                              (br_if $B6
                                (i32.const 4)
                                (i32.eq
                                  (global.get $g1)
                                  (i32.const 1)))))))
                      (if $I24
                        (i32.eqz
                          (global.get $g1))
                        (then
                          (i32.store
                            (i32.const 68316)
                            (local.get $l9))
                          (global.set $__stack_pointer
                            (i32.add
                              (local.get $l2)
                              (i32.const 32)))
                          (br $B4
                            (local.get $l5)))))
                    (if $I25
                      (select
                        (i32.eq
                          (local.get $l8)
                          (i32.const 5))
                        (i32.const 1)
                        (global.get $g1))
                      (then
                        (call $runtime.slicePanic)
                        (drop
                          (br_if $B6
                            (i32.const 5)
                            (i32.eq
                              (global.get $g1)
                              (i32.const 1))))))
                    (if $I26
                      (i32.eqz
                        (global.get $g1))
                      (then
                        (unreachable))))
                  (if $I27
                    (select
                      (i32.eq
                        (local.get $l8)
                        (i32.const 6))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime._panic
                        (i32.const 67000)
                        (i32.const 66072))
                      (drop
                        (br_if $B6
                          (i32.const 6)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I28
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (unreachable)))
                  (unreachable)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l6))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l6
                  (i32.load
                    (global.get $g2)))
                (local.get $l7))
              (i32.store offset=4
                (local.get $l6)
                (local.get $l4))
              (i32.store offset=8
                (local.get $l6)
                (local.get $l2))
              (i32.store offset=12
                (local.get $l6)
                (local.get $l3))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l5))
              (i32.store offset=20
                (local.get $l6)
                (local.get $l9))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 24)))
              (i32.const 0))
            (drop
              (br_if $B1
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))
            (local.set $p0)))
        (if $I29
          (i32.eqz
            (global.get $g1))
          (then
            (return
              (local.get $p0))))
        (unreachable)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l3))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4)))
    (i32.store
      (local.tee $l3
        (i32.load
          (global.get $g2)))
      (local.get $p0))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 8)))
    (i32.const 0))
  (func $_start.command_export (export "_start") (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I2
          (i32.eqz
            (select
              (if $I1 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (if $I3
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 8)))
                (local.set $l0
                  (i32.load
                    (local.tee $l2
                      (i32.load
                        (global.get $g2)))))
                (local.set $l2
                  (i32.load offset=4
                    (local.get $l2)))))
            (block $B4
              (local.set $l1
                (block $B5 (result i32)
                  (if $I6
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l3
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I7
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (global.set $__stack_pointer
                        (local.tee $l0
                          (i32.sub
                            (global.get $__stack_pointer)
                            (i32.const 16))))
                      (i32.store offset=12
                        (local.get $l0)
                        (i32.const 0))
                      (i64.store offset=4 align=4
                        (local.get $l0)
                        (i64.const 2))
                      (local.set $l2
                        (i32.load
                          (i32.const 68316)))
                      (i32.store
                        (i32.const 68316)
                        (local.get $l0))
                      (i32.store
                        (local.get $l0)
                        (local.get $l2))
                      (local.set $l1
                        (memory.size))
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 1))
                      (i32.store
                        (i32.const 68136)
                        (local.tee $l4
                          (i32.shl
                            (local.get $l1)
                            (i32.const 16))))
                      (call $runtime.calculateHeapAddresses)
                      (i32.store offset=12
                        (local.get $l0)
                        (local.tee $l1
                          (i32.load
                            (i32.const 68272))))
                      (i32.store offset=8
                        (local.get $l0)
                        (local.get $l1))
                      (memory.fill
                        (local.get $l1)
                        (i32.const 0)
                        (i32.sub
                          (local.get $l4)
                          (local.get $l1)))))
                  (if $I8
                    (i32.eqz
                      (select
                        (local.get $l3)
                        (i32.const 0)
                        (global.get $g1)))
                    (then
                      (call $internal/task.start
                        (i32.const 1))
                      (drop
                        (br_if $B5
                          (i32.const 0)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I9
                    (select
                      (i32.eq
                        (local.get $l3)
                        (i32.const 1))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.scheduler)
                      (drop
                        (br_if $B5
                          (i32.const 1)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I10
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store
                        (i32.const 68316)
                        (local.get $l2))
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 0))
                      (global.set $__stack_pointer
                        (i32.add
                          (local.get $l0)
                          (i32.const 16)))))
                  (br $B4)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l1))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (local.tee $l1
                  (i32.load
                    (global.get $g2)))
                (local.get $l0))
              (i32.store offset=4
                (local.get $l1)
                (local.get $l2))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 8))))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $resume.command_export (export "resume") (type $t0)
    (local $l0 i32) (local $l1 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I2
          (i32.eqz
            (select
              (if $I1 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (if $I3
              (i32.eq
                (global.get $g1)
                (i32.const 2))
              (then
                (i32.store
                  (global.get $g2)
                  (i32.sub
                    (i32.load
                      (global.get $g2))
                    (i32.const 4)))
                (local.set $l1
                  (i32.load
                    (i32.load
                      (global.get $g2))))))
            (block $B4
              (local.set $l0
                (block $B5 (result i32)
                  (if $I6
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l0
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I7
                    (i32.eqz
                      (select
                        (local.get $l0)
                        (i32.const 0)
                        (global.get $g1)))
                    (then
                      (call $internal/task.start
                        (i32.const 2))
                      (drop
                        (br_if $B5
                          (i32.const 0)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I9
                    (select
                      (global.get $g1)
                      (i32.const 1)
                      (if $I8 (result i32)
                        (global.get $g1)
                        (then
                          (local.get $l1))
                        (else
                          (i32.eqz
                            (i32.load8_u
                              (i32.const 68324))))))
                    (then
                      (if $I10
                        (select
                          (i32.eq
                            (local.get $l0)
                            (i32.const 1))
                          (i32.const 1)
                          (global.get $g1))
                        (then
                          (call $runtime.scheduler)
                          (drop
                            (br_if $B5
                              (i32.const 1)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (br_if $B4
                        (i32.eqz
                          (global.get $g1)))))
                  (if $I11
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 1))))
                  (if $I12
                    (select
                      (i32.eq
                        (local.get $l0)
                        (i32.const 2))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.scheduler)
                      (drop
                        (br_if $B5
                          (i32.const 2)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I13
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 0))))
                  (br $B4)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l0))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l1))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4))))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $go_scheduler.command_export (export "go_scheduler") (type $t0)
    (local $l0 i32)
    (local.set $l0
      (block $B0 (result i32)
        (if $I2
          (i32.eqz
            (select
              (if $I1 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (block $B3
              (local.set $l0
                (block $B4 (result i32)
                  (if $I5
                    (i32.eq
                      (global.get $g1)
                      (i32.const 2))
                    (then
                      (i32.store
                        (global.get $g2)
                        (i32.sub
                          (i32.load
                            (global.get $g2))
                          (i32.const 4)))
                      (local.set $l0
                        (i32.load
                          (i32.load
                            (global.get $g2))))))
                  (if $I7
                    (select
                      (i32.const 1)
                      (global.get $g1)
                      (if $I6 (result i32)
                        (global.get $g1)
                        (then
                          (i32.const 1))
                        (else
                          (i32.load8_u
                            (i32.const 68324)))))
                    (then
                      (if $I8
                        (i32.eqz
                          (select
                            (local.get $l0)
                            (i32.const 0)
                            (global.get $g1)))
                        (then
                          (call $runtime.scheduler)
                          (drop
                            (br_if $B4
                              (i32.const 0)
                              (i32.eq
                                (global.get $g1)
                                (i32.const 1))))))
                      (br_if $B3
                        (i32.eqz
                          (global.get $g1)))))
                  (if $I9
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 1))))
                  (if $I10
                    (select
                      (i32.eq
                        (local.get $l0)
                        (i32.const 1))
                      (i32.const 1)
                      (global.get $g1))
                    (then
                      (call $runtime.scheduler)
                      (drop
                        (br_if $B4
                          (i32.const 1)
                          (i32.eq
                            (global.get $g1)
                            (i32.const 1))))))
                  (if $I11
                    (i32.eqz
                      (global.get $g1))
                    (then
                      (i32.store8
                        (i32.const 68324)
                        (i32.const 0))))
                  (br $B3)))
              (i32.store
                (i32.load
                  (global.get $g2))
                (local.get $l0))
              (i32.store
                (global.get $g2)
                (i32.add
                  (i32.load
                    (global.get $g2))
                  (i32.const 4))))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l0))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (func $asyncify_start_unwind (export "asyncify_start_unwind") (type $t1) (param $p0 i32)
    (global.set $g1
      (i32.const 1))
    (global.set $g2
      (local.get $p0))
    (if $I0
      (i32.gt_u
        (i32.load
          (global.get $g2))
        (i32.load offset=4
          (global.get $g2)))
      (then
        (unreachable))))
  (func $asyncify_stop_unwind (export "asyncify_stop_unwind") (export "asyncify_stop_rewind") (type $t0)
    (global.set $g1
      (i32.const 0))
    (if $I0
      (i32.gt_u
        (i32.load
          (global.get $g2))
        (i32.load offset=4
          (global.get $g2)))
      (then
        (unreachable))))
  (func $asyncify_start_rewind (export "asyncify_start_rewind") (type $t1) (param $p0 i32)
    (global.set $g1
      (i32.const 2))
    (global.set $g2
      (local.get $p0))
    (if $I0
      (i32.gt_u
        (i32.load
          (global.get $g2))
        (i32.load offset=4
          (global.get $g2)))
      (then
        (unreachable))))
  (func $asyncify_get_state (export "asyncify_get_state") (type $t9) (result i32)
    (global.get $g1))
  (func $byn$mgfn-shared$runtime.nilPanic (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (local.set $l2
      (block $B0 (result i32)
        (if $I2
          (i32.eqz
            (select
              (if $I1 (result i32)
                (i32.eq
                  (global.get $g1)
                  (i32.const 2))
                (then
                  (i32.store
                    (global.get $g2)
                    (i32.sub
                      (i32.load
                        (global.get $g2))
                      (i32.const 4)))
                  (i32.load
                    (i32.load
                      (global.get $g2))))
                (else
                  (i32.const 0)))
              (i32.const 0)
              (global.get $g1)))
          (then
            (call $runtime.runtimePanicAt
              (local.get $p1)
              (local.get $p0))
            (drop
              (br_if $B0
                (i32.const 0)
                (i32.eq
                  (global.get $g1)
                  (i32.const 1))))))
        (if $I3
          (i32.eqz
            (global.get $g1))
          (then
            (unreachable)))
        (return)))
    (i32.store
      (i32.load
        (global.get $g2))
      (local.get $l2))
    (i32.store
      (global.get $g2)
      (i32.add
        (i32.load
          (global.get $g2))
        (i32.const 4))))
  (table $T0 8 8 funcref)
  (memory $memory (export "memory") 2)
  (global $__stack_pointer (mut i32) (i32.const 65536))
  (global $g1 (mut i32) (i32.const 0))
  (global $g2 (mut i32) (i32.const 0))
  (elem $e0 (i32.const 1) func $runtime.run$1$gowrapper $runtime.resume$1$gowrapper $github.com/onlpsec/fingerprint/internal/canvas.CanvasFp $runtime.hashmapStringPtrHash $runtime.hashmapStringEqual $runtime.memequal $runtime.hash32)
  (data $.rodata (i32.const 65536) "0123456789abcdefstack overflow-0\c8\00\00\00(\00\01\00\d5\00\00\00 \00\01\00reflect\00syscall/js\00\04\08Type\00\04\08Kind\00\00\00\00z\00\00\00,\09\01\00x\00\01\000\00\01\00reflect.ValueError\00\00Z\00\00\00\9c\00\01\000\00\01\00\0c\00\00\00\02\00\00\00\b8\05\01\00\cc\03\01\00\94\08\01\00J\00\01\00\d5\00\00\00x\00\01\00invalidboolintint8int16int32int64uintuint8uint16uint32uint64uintptrfloat32float64complex64complex128unsafe.Pointerchaninterfaceptrslicearrayfuncmapstructkind\00\00\00z\00\00\00$\09\01\00h\01\01\000\00\01\00reflect.TypeError\00\00\00Z\00\00\00\84\01\01\000\00\01\00\08\00\00\00\01\00\00\00\b8\05\01\00\cc\03\01\00\d5\00\00\00h\01\01\00reflect: call of reflect.Type. on invalid type on zero Valuereflect: call of  Valuefree: invalid pointer\00\00\00\00\df\01\01\00\15\00\00\00realloc: invalid pointer\00\02\01\00\18\00\00\00out of memorypanic: panic: runtime error: nil pointer dereferenceassignment to entry in nil mapindex out of rangeslice out of rangeNaN+Inf-Infniltruefalseunreachable\00\00\00\ba\02\01\00\0b\00\00\00sync: unlock of unlocked Mutex\00\00\d0\02\01\00\1e\00\00\00ObjectArray_makeFuncWrapper\00\00_\00\00\00ref\00\00\08gcPtr\00_pendingEventidthisargsresultconsolecall to released function\00\00\00\00\00\00I\03\01\00\19\00\00\00errorValue.Bool\00z\00\00\00T\09\01\00\a0\03\01\008\00\01\00js.ValueError\00\00\00Z\00\00\00\c4\03\01\008\00\01\00\0c\00\00\00\02\00\00\00\b8\05\01\00\cc\03\01\00\e8\08\01\00C\00\01\00\d5\00\00\00\a0\03\01\00\04\00Method\00syscall/js: Value.Call: property  is not a function, got Value.CallValue.GetValue.IndexValue.IntValue.SetIndexValue.InvokeValue.Set<undefined><null><boolean: <number: ><symbol><object><function>bad type flag\00\00\00\00\97\04\01\00\0d\00\00\00messageJavaScript error: ValueOf: invalid value\00\c9\04\01\00\16\00\00\00undefinednullbooleannumberstringsymbolobjectfunctionbad type\00\00\00\00\1c\05\01\00\08\00\00\00syscall/js: call of  on beginPath\00\00\00\c2\00\00\00\5c\05\01\00\d5\00\00\00T\05\01\00\00\00\00\00\18-DT\fb!\19@N\00\00\00x\05\01\00\d5\00\00\00p\05\01\00\c1\00\00\00\88\05\01\00\d5\00\00\00\80\05\01\00arcclosePathdocumentcanvas\00\00\00\00\00\00\a4\05\01\00\06\00\00\00Q\00\00\00\c0\05\01\00\d5\00\00\00\b8\05\01\00createElementwidthheightstyleinline\00\00\00\00\00\e5\05\01\00\06\00\00\00display2d\00\00\00\00\00\00\00\ff\05\01\00\02\00\00\00getContextrectisPointInPathalphabetic\00\00\00+\06\01\00\0a\00\00\00textBaseline#f60L\06\01\00\04\00\00\00fillRect#069\00\00\00\00`\06\01\00\04\00\00\0011pt Arial\00\00\00\00\00\00p\06\01\00\0a\00\00\00rgba(102, 204, 0, 0.2)\00\00\88\06\01\00\16\00\00\0018pt Arial\00\00\00\00\00\00\a8\06\01\00\0a\00\00\00fontCwm fjordbank glyphs vext quiz, \f0\9f\98\82\f0\9f\98\82\00\00\00\00\c4\06\01\00(\00\00\00fillTextmultiply\00\07\01\00\08\00\00\00globalCompositeOperationrgb(0,255,255)\00\00(\07\01\00\0e\00\00\00rgb(255,255,0)\00\00@\07\01\00\0e\00\00\00rgb(255,0,255)\00\00X\07\01\00\0e\00\00\00fillStyleevenoddy\07\01\00\07\00\00\00filltoDataURLhashwinding\19\00\00\00\b0\07\01\00\b8\07\01\00\b8\05\01\00\d5\00\00\00\a0\07\01\00T\00\00\00\c0\07\01\00\d5\00\00\00\b8\07\01\00\0d\00Value\00\1a\00\00\00\fc\07\01\008\00\01\00\10\00\00\00\03\00\00\00\04\08\01\00\13\03\01\00D\08\01\00\17\03\01\00\5c\08\01\00\1d\03\01\00\d5\00\00\00\d0\07\01\00\17\00\00\00\18\08\01\00 \08\01\00\00\00\00\000\08\01\00\d5\00\00\00\04\08\01\00\18\00\00\00(\08\01\00\d5\00\00\00 \08\01\00\16\00\00\00<\08\01\00 \08\01\00\d5\00\00\000\08\01\00\eb\00\00\00\5c\08\01\00d\08\01\008\00\01\00js.ref\00\00\d5\00\00\00D\08\01\00\cb\00\00\00l\08\01\00\d5\00\00\00d\08\01\00\00\10id\00\00\00\00\ca\00\00\00\84\08\01\00\d5\00\00\00|\08\01\00getFp\00\00\00\e8\00\01\00\1c\09\01\00 \00\01\000\00\01\00reflect.Kind\00\00\00\00:\00\15\004\09\01\00\90\09\01\008\00\01\00js.Error\00\00\00\00:\00\15\00<\09\01\00l\09\01\008\00\01\00js.Func\00\e2\00\01\00D\09\01\00T\05\01\008\00\01\00js.Type\00:\00\14\00L\09\01\00\d0\07\01\008\00\01\00js.Value\00\00\00\00\d5\00\01\00\94\08\01\00\d5\00\01\00D\01\01\00\d5\00\01\00T\00\01\00\d5\00\15\00\b4\08\01\00\d5\00\15\00\d0\08\01\00\d5\00\01\00\e8\08\01\00\d5\00\14\00\00\09\01\00\d5\00\01\00\80\03\01\00\d5\00\14\00l\09\01\00\d5\00\14\00\90\09\01\00\1a\00\14\00\5c\09\01\008\00\01\00\18\00\00\00\02\00\00\00\00\09\01\00\c8\07\01\00|\08\01\00t\08\01\00\1a\00\14\00d\09\01\008\00\01\00\10\00\00\00\01\00\00\00\00\09\01\00\c8\07\01\00\06\00\00\00\04\00\00\00\05\00\00\00\07")
  (data $.data (i32.const 68028) "aQ\86A0\0a\01\00\00\00\00\00\e8\0a\01\00\c1\82\01\00\00\00\00\00\04\00\00\00\0c\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\01\00\00\00(\0c\01\00aQ\86A\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07"))