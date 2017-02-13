# memo

## Basic functions
```Haskell
> quot 4 2
2

> mod 5 3
2

> floor 1.3
1

> ceiling 1.3
2

> round 1.3
1

> round 1.6
2
```

## List
```Haskell
> length [1,2,3,4,5,6]
> head [1,2,3,4,5,6]
> take 3 [1,2,3,4,5,6]
> drop 2 [1,2,3,4,5,6]
> take 4 (drop 1 [1,2,3,4,5,6])
> head (drop 2 [1,2,3,4,5,6])
> [1,2,3,4,5,6] !! 4
```

List is not typed before given its type of elements. See below.

```Haskell
> :i []
data [] a = [] | a : [a]
        ^-- type arg
```

The type which acceptss other type and changes its type as such is called ``高階型``.
``高階型`` in Haskell has six pattern. See the table below.

| type | description |
|:-----|:------------|
| Maybe a | 存在しないことを許容する型 |
| [a] | リスト |
| (a,b) | タプル |
| Either a b | aもしくはbを表す型 「Bool」！ |
| a -> b | aの値をとってbの値を返す関数の型 |
| IO a | 副作用を伴って``a``の値を返す型 |

Useful syntax related to ``List``.

```Haskell
> [1..10]
> [1,3..20]
> [1..]
> ['a'..'z']
> [x | x <- [1..10]]
> [(x,y) | x <- [1,2], y <- ['a', 'b']]
returns [(1, 'a'), (1, 'b'), (2, 'a'), (2, 'b')]
```

The last syntax might be useful when generating a series of combination like `馬券の買い目`.

## Function
``a->b`` is the type that associates `a` with `b` identically.

In the context of Haskell, function is just another a ``type``.
